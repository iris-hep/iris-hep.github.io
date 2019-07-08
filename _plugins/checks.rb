# frozen_string_literal: true

module Checks

  # This class holds a record (like a presentation or a user)
  # and checks the keys with a nice syntax.
  class Record
    def initialize(name, data)
      @name = name
      @data = data
    end
 
    # Check to see if key is present. You can add :optional and/or :nonempty.
    def key(key, *args)
      optional = !args.delete(:optional).nil?
      nonempty = !args.delete(:nonempty).nil?
      msg = "Unrecognized arguments #{args} passed to Record.key"
      raise ArgumentError, msg unless args.empty?

      keyword = optional ? 'should' : 'must'

      # If the key exists
      if !@data.key? key
        msg = "#{@name} #{keyword} contain #{key}"
        send_msg(optional, msg)
      elsif nonempty
        msg = "#{@name} contains #{key} which #{keyword} not be empty"
        send_msg(optional, msg) unless @data[key]
      end
    end

    private

    def send_msg(optional, msg)
      puts msg if optional
      raise StandardError, msg unless optional
    end
  end
end
