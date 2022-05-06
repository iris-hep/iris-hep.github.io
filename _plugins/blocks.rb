# frozen_string_literal: true

module IrisHep
  # Adding expanding list. Access the loop item as "expandable"
  class ExpandableList < Liquid::Block
    def initialize(tag_name, markup, tokens)
      @variable, num = markup.split
      @number = num.to_i
      @numberm1 = num.to_i - 1
      super
    end

    def render(context)
      name = @variable
      results = context[@variable].map do |item|
        context.stack do
          context['expandable'] = item
          "<li>#{super.strip}</li>"
        end
      end

      return '' if results.empty?

      output = "    <ul>\n#{results[0..@numberm1].join("\n")}\n    </ul>"

      return output if results.size <= @number

      %(
        <div>
          #{output}
        </div>
        <button class="btn btn-primary #{name}_class collapse.show" type="button" data-bs-toggle="collapse"
                data-bs-target=".#{name}_class" aria-expanded="false" aria-controls="#{name}">
          See more
        </button>
        <div class="collapse #{name}_class" id="#{name}">
          <ul>
            #{results[@number..].join("\n")}
          </ul>
          <button class="btn btn-primary #{name}_class" type="button" data-bs-toggle="collapse"
                data-bs-target=".#{name}_class" aria-expanded="false" aria-controls="#{name}">
            See less
          </button>
        </div>
      )
    end
  end
end

Liquid::Template.register_tag('expandable', IrisHep::ExpandableList)
