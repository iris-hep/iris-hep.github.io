# frozen_string_literal: true

require_relative 'checks'
require 'set'

module Checks
  # This is a Jekyll Generator
  class CheckPresInfo < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site
      focus_areas = collect_focus_areas

      @site.data['people'].each do |name, person_hash|
        presentations = person_hash['presentations']

        presentations&.each_with_index do |pres_hash, index|
          msg = "presentation ##{index} in _data/people/#{name}.yml"

          ensure_array(presentations[index], 'focus-area')
          ensure_array(presentations[index], 'project')

          presentation = Record.new(msg, pres_hash)

          presentation.key 'title', :nonempty
          presentation.key 'date', :nonempty, :date
          presentation.key 'meeting', :nonempty
          presentation.key 'url'
          presentation.key 'meetingurl', :optional
          presentation.key 'location', :optional
          presentation.key 'focus-area', :optional, set: focus_areas
          presentation.key 'project', :optional

          presentation.print_warnings

          # Add the member shortname to every presentation
          presentations[index]['member'] = name
        end
      end

      @site.data['sorted_presentations'] = get_presentations site.data['people']
    end

    private

    def collect_focus_areas
      extras = @site.config['iris-hep']['extra-focus-areas'].to_set
      focus_area_pages = @site.pages.select { |p| p['pagetype'] == 'focus-area' }
      locals = focus_area_pages.map { |p| p.name[0...-3] }.to_set
      extras | locals
    end

    def ensure_array(hash, key)
      return unless hash.key? key
      return if hash[key].is_a? Array

      hash[key] = [hash[key]]
    end

    def get_presentations(people)
      presentations = people.flat_map { |_, p| p['presentations'] || [] }
      presentations.sort_by { |p| p['date'] }.reverse!
    end
  end
end
