# frozen_string_literal: true

require_relative 'parseindico'

module Indico
  # This is a Jekyll Generator
  class GetIndico < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site
      collect_meeting 'topical', 10570
      collect_meeting 'nsfreport', 11204
    end

    private
    def collect_meeting(name, number)
      # Do nothing if already downloaded
      return if @site.data.key? name

      puts "Accessing Indico meeting API for #{number} - run `bundle exec _scripts/get_indico.rb` to cache"
      iris_meeting = Meetings.new(number)
      @site.data[name] = iris_meeting.dict
    end
  end
end
