# frozen_string_literal: true

module IrisHep
  # Adding useful file filters
  module FileFilters
    def basename(input)
      File.basename(input, '.*')
    end
  end
end

Liquid::Template.register_filter(IrisHep::FileFilters)
