# frozen_string_literal: true

require 'json'
require 'net/http'
require 'pathname'
require 'fileutils'
require 'yaml'

# Add a string method
class String
  # Requires a name of the form last, first and produces f. last
  def initials
    l, f = split ', '
    "#{f[0, 1]}. #{l}"
  end
end

module Publications
  # This is a Jekyll Generator
  class Generator < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @net = Net::HTTP.new('labs.inspirehep.net', 443)
      @net.use_ssl = true

      @site = site

      @site.data['publications'].each do |name, pub|
        prepare(pub, name)

        # Add caching to reduce requests to INSPIRE
        caching(pub, name) { |p| inspire(p) }

        # Submitted-to field and check
        submitted_to(pub, name)

        # Highlighted publications?
      end
    end

    private

    # Check for and add submitted_to information
    def submitted_to(pub, name)
      submitted_to = pub['submitted-to']
      return unless submitted_to

      if pub['citation'].include? 'arXiv'
        pub['citation'] += " (Submitted to #{submitted_to})"
      else
        puts "Warning: #{name} is published but has a submitted-to key"
      end
    end

    # Setup a publication - adds/fixes focus-area and project
    def prepare(pub, name)
      pub['focus-area'] ||= []
      pub['project'] ||= []

      force_array(pub, 'project')

      # Looks up focus areas from projects
      prepare_focus_area(pub, name) if pub['focus-area'].empty?

      msg = 'You must have a project or focus-area in every publication'
      raise StandardError, msg unless pub.key? 'focus-area'

      # Make sure the focus-area is a list
      force_array(pub, 'focus-area')
    end

    # Verify that an item is an Array
    def force_array(pub, name)
      # Make sure the projects are in a list
      pub[name] = [] if pub[name].nil?
      pub[name] = [pub[name]] unless pub[name].respond_to? :each
    end

    # Add focus areas based on projects
    def prepare_focus_area(pub, name)
      pub['project'].each do |p|
        pg = @site.pages.detect { |page| page.data['shortname'] == p }
        msg = "Project #{pub['project']} missing! Cannot find focus-area for #{name}."
        raise StandardError, msg unless pg

        new_fas = pg.data['focus-area']
        new_fas = [new_fas] if new_fas.is_a? String
        pub['focus-area'] += new_fas unless new_fas.nil?
      end

      # Don't list the same focus area multiple times
      pub['focus-area'].uniq!
    end

    # Join the first N names, add et. all. if truncated
    def join_names(names, len: 5)
      return names[0] if names.length == 1

      mini = names[0...len].map(&:initials)
      truncated = names.length > mini.length

      if truncated
        "#{mini.join(', ')} et. al."
      else
        "#{mini[0..-2].join(', ')} and #{mini[-1]}"
      end
    end

    # Look up inspire data *if* inspire-id given
    def inspire(pub)
      return unless pub.key? 'inspire-id'

      recid = pub['inspire-id']
      response = @net.get "/api/literature/#{recid}"

      unless response.code == '200'
        raise IOError, "Getting #{recid} failed with code #{response.code}: #{response.message}"
      end

      data = JSON.parse(response.body)['metadata']

      # Set these *only* if not already set
      pub['title'] ||= data.dig('titles', 0, 'title')
      pub['link'] ||= "http://inspirehep.net/record/#{recid}"
      pub['date'] ||= data['preprint_date']

      # This *only* sets data if the previous line is nil
      pub['date'] ||= data.dig('imprints', 0, 'date')

      # Normalize date (if Nil, this should fail (date required))
      pub['date'] = Date.parse(pub['date']) unless pub['date'].is_a? Date

      pub['citation-count'] ||= data['citation_count']

      # Make the author list, for eventual linking to author pages
      authors = data['authors'].map do |a|
        { 'name' => a['full_name'], 'id' => a.dig('ids', 0, 'value') }
      end
      pub['authors'] ||= authors

      # Build the author string
      mini_authors = join_names(pub['authors'].map { |a| a['name'] }, len: 5)

      # Build the citation string (non-author part)
      j = data.dig('publication_info', 0) # This may be nil
      journal =
        if j&.key?('journal_title') && j&.key?('year')
          "#{j['journal_title']} #{j['journal_volume']} #{j['artid']} (#{j['year']})"
        elsif data.key? 'arxiv_eprints'
          "arXiv #{data['arxiv_eprints'][0]['value']}"
        else
          'Unknown'
        end
      pub['citation'] ||= "#{mini_authors}, #{journal}"
    end

    # Load a yaml file from the cache
    # Return a bool if an update is needed
    def load_from_cache(pub, fname)
      return false unless fname.exist?

      f = YAML.load_file fname
      pub.map do |key, value|
        oldvalue = f.dig(key)
        return false unless oldvalue == value
      end

      f.map do |key, value|
        pub[key] = value
      end

      true
    end

    # Save a publication to the cache dir
    def save_to_cache(pub, fname)
      FileUtils.mkdir_p fname.parent
      File.write(fname, pub.to_yaml)
    end

    # Cache publications
    def caching(pub, name)
      source = Pathname @site.source
      cache = source / '_cache'
      cname = cache / 'publications' / "#{name}.yml"
      plugin = source / '_plugins' / 'getpub.rb'

      if cname.exist? &&                 # Cache file must exist
         plugin.mtime <= cname.mtime &&  # This plugin must be older than the cache
         load_from_cache(pub, cname)     # Loading must work

        puts "Reading #{cname} from cache"
      else
        puts "Saving #{cname}"
        yield pub
        save_to_cache(pub, cname)
      end
    end
  end
end
