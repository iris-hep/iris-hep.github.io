# frozen_string_literal: true

require 'set'

# System for checking yaml entries (also allows modification in a few places)
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
    # You can also add :date.
    def key(key, *args, match: nil, set: nil)
      optional = !args.delete(:optional).nil?
      nonempty = !args.delete(:nonempty).nil?
      date = !args.delete(:date).nil?

      # Require nonempty if given a match
      nonempty = true if match

      msg = "Unrecognized arguments #{args} passed to Record.key"
      raise ArgumentError, msg unless args.empty?

      key_missing(key, optional)
      return unless @data.key? key

      key_nonempty(key, optional) if nonempty
      key_match(key, match) if match
      key_date(key) if date
      key_set(key, set.to_set) if set
    end

    def print_warnings
      # rubocop:disable Style/GuardClause
      unless @missing.empty?
        keys = @missing.join ', '
        puts "#{@name} must contain #{keys}."
      end
      unless @empty.empty?
        keys = @empty.join ', '
        puts "#{@name} must contain non-empty #{keys}."
      end
      # rubocop:enable Style/GuardClause
    end

    private

    def key_missing(key, optional)
      return if @data.key? key

      @missing << key if optional
      msg = "#{@name} must contain #{key}"
      raise StandardError, msg unless optional
    end

    def key_nonempty(key, optional)
      @empty << key if optional
      msg = "#{@name} contains #{key} which must not be empty"
      raise StandardError, msg unless @data[key]
    end

    def key_date(key)
      d = @data[key]
      msg = "#{@name} has a non-date #{d.class.name}. Must be of the form YYYY-MM-DD, not #{d}"
      raise ArgumentError, msg unless d.is_a?(Date)
    end

    def key_match(key, match)
      msg = "#{@data[key]} != #{match}"
      raise StandardError, msg unless match == @data[key]
    end

    def key_set(key, set)
      msg = "#{@data[key]} < #{set.to_a}"
      raise StandardError, msg unless @data[key].to_set < set.to_set
    end
  end
end
