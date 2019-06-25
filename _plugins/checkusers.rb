# frozen_string_literal: true

module Checks
  class PersonRecord
    def initialize(name, data)
      @name = name
      @data = data
    end

    def key(key, optional: false, nonempty: false)
      keyword = optional ? 'should' : 'must'
      msg =  "#{@name}.yml #{keyword} contain #{key}"
      send_msg(optional, msg) unless @data.key? key

      if nonempty
        msg =  "#{@name}.yml contains #{key} which #{keyword} not be empty"
        send_msg(optional, msg) if @data[key].empty?
      end
    end

    private

    def send_msg(optional, msg)
      if optional
        puts msg
      else
        raise StandardError, msg
      end
    end
  end

  # This is a Jekyll Generator
  class CheckUserInfo < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site

      @site.data['people'].each do |name, person_hash|
        person = PersonRecord.new(name, person_hash)

        person.key 'name', nonempty: true 
        person.key 'shortname', nonempty: true
        person.key 'title'
        person.key 'institution', nonempty: true
        person.key 'photo', optional: true
      end
    end
  end
end
