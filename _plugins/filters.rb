# frozen_string_literal: true

module IrisHep
  # Adding useful filters
  module Filters
    # Access the basename (all extensions)
    def basename(input)
      File.basename(input, '.*')
    end

    # Sort by title, within groups of position if present
    def smart_title_sort(input)
      input.sort_by { |p| [p['position'] || 0, p['title'].downcase] }
    end

    # Get a set from a key in a collection of hashes
    def get_set(input, key)
      input.flat_map { |p| p[key] || [] }.uniq
    end

    # Convert array of keys to array of values using a hash
    def key_to_value(input, hash)
      input.map { |k| hash.fetch(k, nil) }.compact
    end

    # second item
    def values(input)
      input.values
    end
  end
end

Liquid::Template.register_filter(IrisHep::Filters)
