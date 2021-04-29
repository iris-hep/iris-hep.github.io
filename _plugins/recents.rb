# frozen_string_literal: true

require 'fileutils'
require 'pathname'

module Recents
  # Generate change information for all markdown pages
  class Generator < Jekyll::Generator
    def generate(site)
      source = Pathname site.source
      items = site.pages.select { |p| p.path.end_with? '.md' }
      items.sort_by { |p| (source / p.path).mtime }.each do |page|
        item = source / page.path
        dur = item.mtime
        page.data['last_modified_at_str'] = dur
      end
    end
  end
end
