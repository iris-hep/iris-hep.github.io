#!/usr/bin/env ruby
# frozen_string_literal: true

require 'yaml'
require 'pathname'
require 'date'

MAT_TO_KW = {
  'Development' => 'crit',
  'Exploratory' => 'crit',
  'Testing' => 'crit',
  'Unknown' => 'crit',
  'Deployed' => 'active',
  'Archived' => 'done'
}.freeze

def process_projects(projects)
  projects.filter_map do |project|
    project['start-date'] && {
      title: project['title'],
      focus_area: [*project['focus-area']],
      start: project['start-date'],
      end: project['end-date'] || Date.today,
      maturity: project['maturity'],
      status: MAT_TO_KW[project['maturity']]
    }
  end
end

project_files = Pathname.glob('pages/projects/*.md')

projects_raw = project_files.map do |fn|
  YAML.safe_load_file(fn, permitted_classes: [Date])
end

missing = projects_raw.filter_map { _1.key?('start-date') ? nil : _1['title'] }
puts missing
projects = process_projects(projects_raw)

ia = projects.filter { _1[:focus_area].include?('ia') }
as = projects.reject { _1[:focus_area].include?('ia') }

puts "gantt
    title IRIS-HEP project lifecyles
    dateFormat  YYYY-MM-DD
    axisFormat  %Y
"

{ ia: ia, as: as }.each do |sec, val|
  puts("\n    section #{sec}")
  val.each do |proj|
    printf("        %<title>-30s  :%<status>-7s, %<start>s, %<end>s\n", proj)
  end
end
