# frozen_string_literal: true

require_relative 'parseindico'

module Indico
  # This is a Jekyll Generator
  class GetIndico < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      iris_meeting = Meetings.new(10570)
      site.data['topical'] = iris_meeting.dict
    end
  end
end
