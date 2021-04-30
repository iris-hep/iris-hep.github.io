# frozen_string_literal: true

module IrisHep
  # This will add a filter to raise an exception
  module ExceptionFilter
    def raise_error(msg)
      bad_file = @context.registers[:page]['path']
      err_msg = "On #{bad_file}: #{msg}"
      raise err_msg
    end
  end
end

Liquid::Template.register_filter(IrisHep::ExceptionFilter)
