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

      %(<div>
        <div>
          #{output}
        </div>
        <div class="collapse" id="#{name}">
          <ul>
            #{results[@number..].join("\n")}
          </ul>
        </div>
        <button class="btn btn-white" type="button" id="#{name}_btn"
                data-bs-toggle="collapse" data-bs-target="##{name}"
                aria-expanded="false" aria-controls="#{name}"
                onClick="iris_show_hide_button(this);">
          Show more >>
        </button>
      </div>)
    end
  end
end

Liquid::Template.register_tag('expandable', IrisHep::ExpandableList)
