# frozen_string_literal: true

require 'set'

# System for checking yaml entries (also allows modification in a few places)
module Checks
  # This error is used
  class Error < StandardError
  end

  # This class holds a record (like a presentation or a user)
  # and checks the keys with a nice syntax.
  class Record
    def initialize(name, data)
      @name = name
      @data = data
      @missing = []
      @empty = []
      @names = []
    end

    # Check to see if key is present. You can add :optional and/or :nonempty.
    # You can also add :date.
    def key(key, *args, match: nil, set: nil, usernames: nil)
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
      key_usernames(key, usernames.to_set) if usernames
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

    def raise_err(msg)
      raise Error, "#{@name} #{msg}"
    end

    private

    def key_missing(key, optional)
      return if @data.key? key

      @missing << key if optional
      msg = "must contain '#{key}'"
      raise_err msg unless optional
    end

    def key_nonempty(key, optional)
      @empty << key if optional
      msg = "contains '#{key}' which must not be empty"
      raise_err msg unless @data[key]
    end

    def key_date(key)
      d = @data[key]
      msg = "'#{key}' has a non-date #{d.class.name}. Must be of the form YYYY-MM-DD, not #{d}"
      raise_err msg unless d.is_a?(Date)
    end

    def key_match(key, match)
      msg = "'#{key}' has '#{@data[key]}' != '#{match}' (expected)"
      raise_err msg unless match == @data[key]
    end

    def key_set(key, set)
      msg = "'#{key}': #{@data[key]} is not a subset of #{set.to_a}"
      raise_err msg unless @data[key].to_set < set.to_set
    end

    # Like key_set, but filters names with spaces, and shows only unmatched items
    def key_usernames(key, usernames)
      team = @data[key].reject { |v| v.include?(' ') || v.include?('@') }.to_set
      extras = team - usernames

      msg = "'#{key}': Unrecognized usernames: #{extras.to_a} "
      raise_err msg unless extras.empty?
    end
  end
end
