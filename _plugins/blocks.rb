# frozen_string_literal: true

module IrisHep
  # Adding expanding list. Access the loop item as "expandable"
  class ExpandableList < Liquid::Block
    def initialize(tag_name, markup, tokens)
      @variable, num = markup.split
      @number = num.to_i
      super
    end

    def render(context)
      results = context[@variable].map do |item|
        context.stack do
          context['expandable'] = item
          "<li>#{super}</li>"
        end
      end

      return '' if results.empty?

      output = "<ul>#{results[0..@number].join("\n")}</ul>"

      return output if results.size <= @number

      output + "<p>[expand]</p>\n<ul>#{results[@number..-1].join("\n")}</ul>\n<p>[/expand]</p>\n"
    end
  end
end

Liquid::Template.register_tag('expandable', IrisHep::ExpandableList)
