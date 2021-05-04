# frozen_string_literal: true

module IrisHep
  # This will raise an exception and stop processing
  class RaiseError < Liquid::Tag
    def render(context)
      bad_file = context.registers[:page]['path']
      str = Liquid::Template.parse(@markup).render(context)
      err_msg = "In #{bad_file}:#{line_number} #{str}"
      raise StandardError, err_msg
    end
  end
end

Liquid::Template.register_tag('raise_error', IrisHep::RaiseError)
