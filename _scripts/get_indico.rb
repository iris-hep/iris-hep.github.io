#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../_plugins/parseindico'
require 'pathname'

Indico::MEETING_IDS.each do |name, number|
  puts "Accessing #{number} for #{name}"
  indico_dir = Pathname.new(__FILE__).realpath.parent.parent / '_data' / 'indico'
  folder = indico_dir / name.to_s
  indico_dir.mkdir unless indico_dir.directory?
  folder.mkdir unless folder.directory?

  iris_meeting = Indico::Meetings.new number
  iris_meeting.to_files(folder) { |key| puts "Making #{folder / key}.yml\n" }
end
