#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../_plugins/parseindico'
require 'optparse'
require 'pathname'

options = {
  number: 10570,
  folder: Pathname.new(__FILE__).realpath.parent.parent / '_data' / 'topical'
}

OptionParser.new do |parser|
  parser.banner = 'Usage: getindico.rb [options]'

  parser.on('-n', '--number NUMBER', Integer,
            "The indico meeting number DEFAULT: #{options[:number]}") do |v|
    options[:number] = v
  end

  parser.on('-f', '--folder FOLDER',
            "The folder to fill DEFAULT: #{options[:folder]}") do |v|
    options[:folder] = Pathname.new v
  end

  parser.on('-h', '--help', 'Show this help message') do
    puts parser
  end
end.parse!

folder = options[:folder]
folder.mkdir unless folder.directory?

iris_meeting = Indico::Meetings.new options[:number]
iris_meeting.to_files folder do |key|
  puts "Making #{folder / key}\n"
end
