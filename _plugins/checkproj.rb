# frozen_string_literal: true

require_relative 'checks'
require 'set'

module Checks
  # This is a Jekyll Generator
  class CheckProjInfo < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site

      @site.pages.each do |page|
        next unless page['pagetype'] == 'project'

        msg = page.path.to_s
        p = Record.new(msg, page.data)
        p.key 'title', :nonempty
        p.key 'shortname', :nonempty
        p.key 'focus-area', :nonempty
        p.key 'team', :nonempty, usernames: people

        p.print_warnings
      end

      @site.data['fellow_projects'].each do |name, hash|
        msg = name
        p = Record.new(msg, hash)
        p.key 'contacts', :nonempty, usernames: people
      end
    end

    private

    def people
      @people ||= people_gen
    end

    def people_gen
      fellow_pages = @site.pages.select { |v| v.data['pagetype'] == 'fellow' }.compact
      fellow_shortnames = fellow_pages.map { |v| v.data['github-username'] }.to_set
      @site.data['people'].keys.to_set | fellow_shortnames
    end
  end
end
