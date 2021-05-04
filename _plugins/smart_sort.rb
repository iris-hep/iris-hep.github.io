# frozen_string_literal: true

module IrisHep
  # Adding useful file filters
  module SmartSort
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
  end
end

Liquid::Template.register_filter(IrisHep::SmartSort)
