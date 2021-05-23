# frozen_string_literal: true

module IrisHep
  # Adding useful filters
  module Filters
    # Access the basename (all extensions)
    def basename(input, ext = '.*')
      File.basename(input, ext)
    end

    # Sort by title, within groups of position if present
    def smart_title_sort(input)
      input.sort_by { |p| [p['position'] || 0, p['title'].downcase] }
    end

    # Force an array to be an array of arrays
    def ensure_arrays(input)
      input.map do |v|
        return [] if v.nil?

        v.is_a?(Array) ? v : [v]
      end
    end

    # Force an item to be an array
    def ensure_array(input)
      return [] if input.nil?

      input.is_a?(Array) ? input : [input]
    end

    # Flatten an array of arrays
    def flat_map(input)
      ensure_arrays(input.lazy).flat_map { |p| p || [] }.to_a
    end

    # Convert array of keys to array of values using a hash, nil where no mapping exists
    def hash_fetch(input, hash)
      input.map { |k| hash.fetch(k, nil) }
    end

    # Keys of a hash
    def keys(input)
      input.keys
    end

    # Values of a hash
    def values(input)
      input.values
    end

    # Selects items where there is an overlap between items
    def where_overlap(input, key, values)
      input.select { |v| ensure_array(v[key]).to_set.intersect? values.to_set }
    end

    # Sort "First ..., Last" by "last, first, ..."
    def last_name_sort(input, key)
      input.sort_by do |v|
        vals = v[key].downcase.split
        vals[-1..-1] + vals[0..-2]
      end
    end

    # Print to console
    def puts(input, msg = '')
      print "#{msg} #{input}\n"
      input
    end

    # Filter in range of days, can use nil
    def where_day_range(input, key, start_day, stop_day = nil)
      input.select do |v|
        start = start_day ? v[key] >= (Date.today - start_day) : true
        stop = stop_day ? v[key] < (Date.today - stop_day) : true
        start && stop
      end
    end

    # Filter in range of months, can use nil
    def where_month_range(input, key, start_month, stop_month = nil)
      input.select do |v|
        start = start_month ? v[key] >= (Date.today << start_month) : true
        stop = stop_month ? v[key] < (Date.today << stop_month) : true
        start && stop
      end
    end

    # Pretty-print a daterange
    def print_date_range(start, stop = nil)
      stop = stop.nil? ? start : stop
      if start.year != stop.year
        "#{start.strftime '%b&nbsp;%-d, %Y'}&ndash;#{stop.strftime '%b&nbsp;%-d, %Y'}"
      elsif start.month != stop.month
        "#{start.strftime '%b&nbsp;%-d'}&ndash;#{stop.strftime '%b&nbsp;%-d, %Y'}"
      elsif start.day != stop.day
        "#{start.strftime '%b&nbsp;%-d'}&ndash;#{stop.strftime '%-d, %Y'}"
      else
        start.strftime '%b&nbsp;%-d, %Y'
      end
    end

    # Pretty print month date range
    def print_date_range_month(start, stop = nil)
      stop = stop.nil? ? start : stop
      if start.year == stop.year
        "#{start.strftime '%b'} &ndash; #{stop.strftime '%b, %Y'}"
      else
        "#{start.strftime '%b, %Y'} &ndash; #{stop.strftime '%b, %Y'}"
      end
    end
  end
end

Liquid::Template.register_filter(IrisHep::Filters)
