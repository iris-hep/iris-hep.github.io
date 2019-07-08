# frozen_string_literal: true

require_relative 'checks'

module Checks
  # This is a Jekyll Generator
  class CheckUserInfo < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site

      @site.data['people'].each do |name, person_hash|
        msg = "_data/people/#{name}.yml"
        person = Record.new(msg, person_hash)

        person.key 'name', :nonempty
        person.key 'shortname', :nonempty
        person.key 'title'
        person.key 'institution', :nonempty
        person.key 'photo', :optional
      end
    end
  end
end
