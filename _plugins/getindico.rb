# frozen_string_literal: true

require_relative 'parseindico'

require 'yaml'

module Indico
  # This is a Jekyll Generator
  class GetIndico < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site

      meeting_ids = Meetings.meeting_ids(@site.config)
      meeting_ids.each do |name, number|
        collect_meeting name.to_s, number
      end
    end

    private

    def collect_meeting(name, number)
      @site.data['indico'] = {} unless @site.data.key? 'indico'

      # Do nothing if already downloaded
      return if @site.data['indico'].key? name

      puts "Accessing Indico meeting API for #{name}:#{number} " \
           '- run `bundle exec rake cache` to cache'
      iris_meeting = Meetings.new(number)
      @site.data['indico'][name] = iris_meeting.dict
    end
  end
end
