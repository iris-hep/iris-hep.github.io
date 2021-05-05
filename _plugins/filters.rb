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

    # Force an array to be an array of arrays
    def ensure_arrays(input)
      input.map do |v|
        return [] if v.nil?

        v.is_a?(Array) ? v : [v]
      end
    end

    # Flatten an array of arrays
    def flat_map(input)
      ensure_arrays(input.lazy).flat_map { |p| p || [] }.to_a
    end

    # Convert array of keys to array of values using a hash, nil where no mapping exists
    def hash_fetch(input, hash)
      input.map { |k| hash.fetch(k, nil) }
    end

    # Values of a hash
    def values(input)
      input.values
    end
  end
end

Liquid::Template.register_filter(IrisHep::Filters)
