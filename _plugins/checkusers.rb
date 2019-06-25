# frozen_string_literal: true

module Checks
  class PersonRecord
    def initialize(name, data)
      @name = name
      @data = data
    end

    def key(key, required: true, nonempty: false)
      keyword = required ? 'must' : 'should'
      msg =  "#{@name}.yml #{keyword} contain #{key}"
      send_msg(required, msg) unless @data.key? key

      if nonempty
        msg =  "#{@name}.yml contains #{key} which #{keyword} not be empty"
        send_msg(required, msg) if @data[key].empty?
      end
    end

    private

    def send_msg(required, msg)
      if required
        raise StandardError, msg
      else
        puts msg
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
        person.key 'photo', required: false
      end
    end
  end
end
