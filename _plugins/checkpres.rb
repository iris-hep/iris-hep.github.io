# frozen_string_literal: true

require_relative 'checks'
require 'set'

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

          ensure_array(presentations[index], 'focus-area')
          ensure_array(presentations[index], 'project')

          local_fa = pres_hash['focus-area']&.to_set
          projectless = site.config['iris-hep']['projectless-focus-areas'].to_set

          presentation = Record.new(msg, pres_hash)
          presentation.key 'title', :nonempty
          presentation.key 'date', :nonempty, :date
          presentation.key 'meeting', :nonempty
          presentation.key 'url'
          presentation.key 'meetingurl', :optional
          presentation.key 'location', :optional
          presentation.key 'focus-area', :optional, set: focus_areas
          presentation.key 'project', :optional, set: projects unless local_fa && local_fa < projectless

          presentation.print_warnings

          # Add the member shortname to every presentation
          presentations[index]['member'] = name
        end
      end

      @site.data['sorted_presentations'] = get_presentations site.data['people']
    end

    private

    def focus_areas
      @focus_areas ||= begin
        extras = @site.config['iris-hep']['extra-focus-areas'].to_set
        focus_area_pages = @site.pages.select { |p| p['pagetype'] == 'focus-area' }
        locals = focus_area_pages.map { |p| File.basename(p.name, '.*') }.to_set
        extras | locals
      end
    end

    def projects
      @projects ||= begin
        project_pages = @site.pages.select { |p| p['pagetype'] == 'project' }
        project_pages.each do |p|
          msg = "Filename #{p.name} must match the shortname #{p['shortname']}"
          raise Checks::Error, msg unless File.basename(p.name, '.*') == p['shortname']
        end
        project_pages.map { |p| File.basename(p.name, '.*') }.to_set
      end
    end

    def ensure_array(hash, key)
      return unless hash.key? key
      return if hash[key].is_a? Array

      hash[key] = hash[key].nil? ? [] : [hash[key]]
    end

    def get_presentations(people)
      presentations = people.flat_map { |_, p| p['presentations'] || [] }
      presentations.sort_by { |p| p['date'] }.reverse!
    end
  end
end
