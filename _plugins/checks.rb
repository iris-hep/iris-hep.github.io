# frozen_string_literal: true

module Checks

  # This class holds a record (like a presentation or a user)
  # and checks the keys with a nice syntax.
  class Record
    def initialize(name, data)
      @name = name
      @data = data
      @missing = []
      @empty = []
    end
 
    # Check to see if key is present. You can add :optional and/or :nonempty.
    def key(key, *args)
      optional = !args.delete(:optional).nil?
      nonempty = !args.delete(:nonempty).nil?
      date = !args.delete(:date).nil?

      msg = "Unrecognized arguments #{args} passed to Record.key"
      raise ArgumentError, msg unless args.empty?

      # If the key exists
      if !@data.key? key
        @missing << key if optional
        msg = "#{@name} must contain #{key}"
        raise StandardError, msg unless optional
      elsif nonempty
        @empty << key if optional
        msg = "#{@name} contains #{key} which must not be empty"
        raise StandardError, msg unless @data[key]
      end

      if date 
        d = @data[key]
        dmsg = "#{@name} has a non-date #{d.class.name}. Must be of the form YYYY-MM-DD, not #{d}"
        raise ArgumentError, dmsg unless d.is_a?(Date)
      end
    end

    def print_warnings
      unless @missing.empty?
        keys = @missing.join ', '
        puts "#{@name} must contain #{keys}."
      end
      unless @empty.empty?
        keys = @empty.join ', '
        puts "#{@name} must contain non-empty #{keys}."
      end
    end
  end
end
