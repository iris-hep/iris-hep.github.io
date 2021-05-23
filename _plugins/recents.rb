# frozen_string_literal: true

require 'fileutils'
require 'pathname'
require 'jekyll-last-modified-at'
require 'date'

module Recents
  # Generate change information for all markdown pages
  class Generator < Jekyll::Generator
    def generate(site)
      items = site.pages.select { |p| p.path.end_with? '.md' }
      items.each do |page|
        determ = Jekyll::LastModifiedAt::Determinator.new(site.source, page.path, '%FT%T%:z')
        page.data['last_modified_date'] = DateTime.parse determ.to_s
      end
    end
  end
end
