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
      @net = Net::HTTP.new 'labs.inspirehep.net', 443
      @net.use_ssl = true

      @site = site

      @site.data['publications'].each do |name, pub|
        prepare pub

        # Add caching to reduce requests to INSPIRE
        caching(name, pub) do |p|
          inspire p
        end

        # Highlighted publications?
      end
    end

    private

    # Setup a publication - adds/fixes focus-area and project
    def prepare(pub)
      force_array pub, 'project' if pub.key? 'project'
      prepare_focus_area pub unless pub.key? 'focus-area'

      msg = 'You must have a project or focus-area in every publication'
      raise StandardError, msg unless pub.key? 'focus-area'

      # Make sure the focus-area is a list
      force_array pub, 'focus-area'
    end

    # Verify that an item is an Array
    def force_array(pub, name)
      # Make sure the projects are in a list
      pub[name] = [pub[name]] unless pub[name].is_a? Array
    end

    # Add focus areas based on projects
    def prepare_focus_area(pub)
      pub['focus-area'] = []
      pub['project'].each do |p|
        pg = @site.pages.detect { |page| page.data['shortname'] == p }
        msg = "Project #{pub['project']} missing! Cannot find focus-area."
        raise StandardError, msg unless pg

        pub['focus-area'] << pg.data['focus-area']
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
      data = JSON.parse(response.body)['metadata']

      # Set these *only* if not already set
      pub['title'] ||= data.dig('titles', 0, 'title')
      pub['link'] ||= "http://inspirehep.net/record/#{recid}"
      pub['date'] ||= data['preprint_date']

      # Make the author list, for eventual linking to author pages
      authors = data['authors'].map do |a|
        { 'name' => a['full_name'], 'id' => a['ids'][0]['value'] }
      end
      pub['authors'] ||= authors

      # Build the author string
      mini_authors = join_names(pub['authors'].map { |a| a['name'] }, len: 5)

      # Build the citation string (non-author part)
      journal =
        if data.key? 'publication_info'
          j = data['publication_info'][0]
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
    def load_from_cache(fname, pub)
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
    def save_to_cache(fname, pub)
      FileUtils.mkdir_p fname.parent
      File.write fname, pub.to_yaml
    end

    # Cache publications
    def caching(name, pub)
      source = Pathname @site.source
      cache = source / '_cache'
      cname = cache / 'publications' / "#{name}.yml"

      if cname.exist? && load_from_cache(cname, pub)
        puts "Reading #{cname} from cache"
      else
        yield pub
        puts "Saving #{cname}"
        save_to_cache cname, pub
      end
    end
  end
end
