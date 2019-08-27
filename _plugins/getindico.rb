# frozen_string_literal: true

require_relative 'parseindico'

module Indico
  # This is a Jekyll Generator
  class GetIndico < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      # Do nothing if already downloaded
      return if site.data.key? 'topical'

      puts 'Accessing Indico meeting API - run bundle exec _scripts/get_indico.rb to cache'
      iris_meeting = Meetings.new(10570)
      site.data['topical'] = iris_meeting.dict
    end
  end
end
