# frozen_string_literal: true

module IrisHep
  # Adding useful file filters
  module SmartSort
    def smart_page_sort(input, field, match)
      input.select { |p| p['pagetype'] == 'project' && p[field].include?(match) }
           .sort_by { |p| [p['position'] || 0, p['title'].downcase] }
    end

    def get_set(input, key)
      input.flat_map { |p| p[key] || [] }.uniq
    end

    def key_to_value(input, hash)
      input.map { |k| hash.fetch(k, nil) }.compact
    end
  end
end

Liquid::Template.register_filter(IrisHep::SmartSort)
