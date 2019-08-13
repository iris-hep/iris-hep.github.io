# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'json'
require 'yaml'
require 'date'


module Indico

  # Look for topical meetings
  class Meetings
    attr_accessor :dict

    # ID for IRIS-HEP: 10570
    def initialize(indico_id)
      uri = URI.parse("https://indico.cern.ch/export/categ/#{indico_id}.json?pretty=no") # from=today&
      response = Net::HTTP.get_response(uri)

      string = response.body
      parsed = JSON.parse(string) # returns a hash

      @dict = {}

      parsed['results'].each do |i|
        # Skip if protected
        next if i['hasAnyProtection']

        # Trim paragraph tags
        d = i['description']
        d = d[3..-1] if d.start_with? '<p>'
        d = d[0..-5] if d.end_with? '</p>'

        start_date = Date.parse i['startDate']['date']
        fname = "#{start_date.strftime '%Y%m%d'}.yml"
        @dict[fname] = {
          'startdate' => start_date,
          'meetingurl' => i['url'],
          'name' => i['title'],
          'location' => i['location'],
          'description' => d
        }
      end
    end

    # Write out files (current directory, by key name)
    def to_files(folder)
      @dict.each do |d_key, d_val|
        yield d_key if block_given?

        File.write(folder / d_key, d_val.to_yaml)
      end
    end
  end
end
