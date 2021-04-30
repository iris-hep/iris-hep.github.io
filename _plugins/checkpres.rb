# frozen_string_literal: true

require_relative 'checks'

module Checks
  # This is a Jekyll Generator
  class CheckPresInfo < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site

      @site.data['people'].each do |name, person_hash|
        presentations = person_hash['presentations']

        presentations&.each_with_index do |pres_hash, index|
          msg = "presentation ##{index} in _data/people/#{name}.yml"
          presentation = Record.new(msg, pres_hash)

          presentation.key 'title', :nonempty
          presentation.key 'date', :nonempty, :date
          presentation.key 'meeting', :nonempty
          presentation.key 'url'
          presentation.key 'meetingurl', :optional
          presentation.key 'location', :optional
          presentation.key 'focus-area', :optional
          presentation.key 'project', :optional

          presentation.print_warnings

          # Add the member shortname to every presentation
          presentations[index]['member'] = name
        end
      end

      @site.data['sorted_presentations'] = get_presentations site.data['people']
    end

    private

    def get_presentations(people)
      presentations = people.flat_map { |_, p| p['presentations'] || [] }
      presentations.sort_by { |p| p['date'] }.reverse!
    end
  end
end
