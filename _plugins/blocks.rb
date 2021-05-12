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

  # Display a grouped-by-month listing
  class DisplayByMonth < Liquid::Block
    def initialize(tage_name, markup, tokens)
      @variable, @key = markup.split
      super
    end

    def render(context)
      groups = context[@variable].group_by { |item| item[@key].strftime('%B, %Y') }

      results = groups.map do |month_year, items|
        listing = items.map do |item|
          context.stack do 
            context['display_by_month'] = item
             "<li>#{super}</li>"
          end
        end
        block = listing.join "\n"
        "<h5>#{month_year}</h5>\n<ul>\n#{block}\n</ul>"
      end
      results.join("\n\n")
    end
  end
end

Liquid::Template.register_tag('expandable', IrisHep::ExpandableList)
Liquid::Template.register_tag('display_by_month', IrisHep::DisplayByMonth)
