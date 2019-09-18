#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../_plugins/parseindico'
require 'pathname'

options = {
  'topical' => 10570,
  'nsfreport' => 11204
}

options.each do |name, number|
  puts "Accessing #{number} for #{name}"
  folder = Pathname.new(__FILE__).realpath.parent.parent / '_data' / name
  folder.mkdir unless folder.directory?

  iris_meeting = Indico::Meetings.new number
  iris_meeting.to_files(folder){ |key| puts "Making #{folder / key}\n" }
end
