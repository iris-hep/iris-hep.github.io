# frozen_string_literal: true

require 'yaml'
require 'pathname'
require 'set'

def ensure_array(arr)
  return [] if arr.nil?

  arr.is_a?(Array) ? arr : [arr]
end

project_files = Pathname.glob('pages/projects/*.md')
counter = {}
project_files.each do |fn|
  proj = YAML.load_file fn

  fa = ensure_array proj['focus-area']
  team = ensure_array proj['team']
  team.reject! { _1.include?(' ') }&.reject! { _1.include?('@') }

  fa.each { |a| team.each { |t| counter[t] = (counter[t] || Set.new) << a } }
end

people_files = Pathname.glob('_data/people/*.yml')
people_files.each do |fn|
  info = YAML.load_file fn

  user_fa = info['presentations']&.flat_map { ensure_array(_1['focus-area']) }&.to_set&.delete('core')
  proj_fa = counter[info['shortname']]&.delete('core')
  puts "#{info['name']}: #{user_fa.to_a} | #{proj_fa.to_a}"
  all_fa = (user_fa || Set.new) | (proj_fa || Set.new)
  info['focus-area'] = all_fa.to_a unless all_fa.empty?

  sorted = info.sort_by { _1 }.to_h
  sorted['presentations'] = sorted.delete 'presentations'

  fn.write(sorted.to_yaml.lines[1..-1].join)
end
