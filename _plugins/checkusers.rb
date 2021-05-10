# frozen_string_literal: true

require_relative 'checks'
require 'set'

module Checks
  # This is a Jekyll Generator
  class CheckUserInfo < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site

      people_in_inst = Set.new
      @site.data['universities'].each do |_inst_name, inst_hash|
        people_in_inst.merge inst_hash['personnel']
      end

      @site.data['people'].each do |name, person_hash|
        msg = "_data/people/#{name}.yml"
        person = Record.new(msg, person_hash)

        person.key 'name', :nonempty
        person.key 'shortname', match: name
        person.key 'title'
        person.key 'institution', :nonempty
        person.key 'photo', :optional
        person.key 'focus-area', :optional

        person.print_warnings

        if person_hash['hidden']
          msg = 'is listed in a university and hidden is True'
          person.raise_err msg if people_in_inst.include? person_hash['shortname']
        else
          msg = 'is not listed in a university and hidden is not True'
          person.raise_err msg unless people_in_inst.include? person_hash['shortname']
        end
      end
    end
  end
end
