#!/usr/bin/env ruby
# frozen_string_literal: true

require 'yaml'
require 'pathname'
require 'date'

project_files = Pathname.glob('pages/projects/*.md')

projects = project_files.map do |fn|
  results = YAML.safe_load_file(fn, permitted_classes: [Date])
  {
    title: results['title'],
    focus_area: [*results['focus-area']],
    start_date: results['start-date'],
    end_date: results['end-date'] || Date.today,
    maturity: results['maturity']
  }
end

ia = projects.filter { _1[:focus_area].include?('ia') }
as = projects.reject { _1[:focus_area].include?('ia') }

puts "gantt
    title IRIS-HEP project lifecyles
    dateFormat  YYYY-MM-DD
    axisFormat  %Y
"

MAT_TO_KW = {
  'Development' => 'crit',
  'Exploratory' => 'crit',
  'Testing' => 'crit',
  'Unknown' => 'crit',
  'Deployed' => 'active',
  'Archived' => 'done'
}.freeze

{ ia: ia, as: as }.each do |sec, val|
  puts("\n    section #{sec}")
  val.each do |proj|
    proj[:status] = MAT_TO_KW[proj[:maturity]]
    msg = "        %<title>-30s  :%<status>-7s, %<start_date>s, %<end_date>s\n"
    printf(msg, proj) if proj[:start_date]
  end
end
