require 'json'
require 'net/http'
# require 'yaml'

module Publications
  class Generator < Jekyll::Generator
    def generate site
      net = Net::HTTP.new 'labs.inspirehep.net', 443
      net.use_ssl = true

      for _, pub in site.data["publications"]
        if pub.key? "inspire-id"
          recid = pub["inspire-id"]
          response = net.get "/api/literature/#{recid}"
          data = JSON.parse(response.body())["metadata"]

          # Set these *only* if not already set
          pub["title"] ||= data["titles"][0]["title"]
          pub["link"] ||= "http://inspirehep.net/record/#{recid}"
          pub["date"] ||= data["preprint_date"]

          # Make the author list, for eventual linking to author pages
          authors = data["authors"].map{ |a| {
            "name" => a["full_name"],
            "id" => a["ids"][0]["value"]
          }}
          pub["authors"] ||= authors

          # Build the author string
          # TODO: Does not respect manual author list
          mini_authors = authors[0..4].map{|a|
            l, f = a["name"].split ', '
            "#{f[0,1]}. #{l}"
          }.join ", "
          mini_authors += ' et. al.' if authors.length > authors[0..5].length

          # Build the citation string (non-author part)
          if data.key? "publication_info"
            j = data["publication_info"][0]
            journal = "#{j['journal_title']} #{j['journal_volume']} #{j['artid']} (#{j['year']})"
          elsif data.key? "arxiv_eprints"
            journal = "arXiv #{data['arxiv_eprints'][0]['value']}"
          else
            journal = "Unknown"
          end
          pub["citation"] ||= "#{mini_authors}, #{journal}"
          
          if pub.key? 'project'
            p = site.pages.detect {|page| page.data['shortname'] == pub['project']}
            pub['focus-area'] ||= p.data['focus-area'] if p
            puts "Warning: #{pub['project']} does not exist! Cannot find focus-area." if !p
          end
        end

        # Make sure the projects are in a list (Not supported yet)
        # pub["project"] = [pub["project"]] if not pub["project"].kind_of? Array

        # Uncomment the require yaml and this line to print out each output
        # puts pub.to_yaml
      end
    end
  end
end

