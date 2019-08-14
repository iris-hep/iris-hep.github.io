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
      @dict = {}

      download_and_iterate indico_id do |i|
        # Skip if protected
        next if i['hasAnyProtection']

        # Trim paragraph tags
        d = i['description']
        d = d[3..-1] if d.start_with? '<p>'
        d = d[0..-5] if d.end_with? '</p>'

        start_date = Date.parse i['startDate']['date']
        fname = "#{start_date.strftime '%Y%m%d'}.yml"

	youtube=''
	urllist = URI.extract(d)
	urllist.each do |url|
	   if url.include? "youtube"
  	     youtube=url
	   end
        end

        @dict[fname] = {
          'name' => i['title'],
          'startdate' => start_date,
          'meetingurl' => i['url'],
          'location' => i['location'],
          'youtube' => youtube,
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

    private

    # Run a block over each item in the downloaded results
    def download_and_iterate(indico_id)
      uri = URI.parse "https://indico.cern.ch/export/categ/#{indico_id}.json?pretty=no" # from=today&
      response = Net::HTTP.get_response uri

      string = response.body
      parsed = JSON.parse string # returns a hash

      parsed['results'].each { |i| yield i }
    end
  end
end
