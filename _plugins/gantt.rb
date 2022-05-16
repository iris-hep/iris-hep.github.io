# frozen_string_literal: true

if Gem.ruby_version < Gem::Version.new('2.7.0')
  # Add filter_map
  require 'ruby-next'
  using RubyNext
end

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

MAT_TO_KW = {
  'Development' => 'done',
  'Exploratory' => 'done',
  'Testing' => 'done',
  'Unknown' => 'done',
  'Deployed' => 'active',
  'Archived' => 'crit'
}.freeze

def make_section(projects)
  projects.map do |p|
    format('        %<title>-34s  :%<status>-7s, %<start>s, %<end>s', p)
  end.join("\n")
end

# IRIS-HEP modules
module IrisHep
  # IRIS-HEP project gantt charts
  module GanttFilters
    def gantt_projects(projects_raw)
      projects = process_projects(projects_raw)
      result = "<div class=\"mermaid\">
gantt
    title IRIS-HEP project lifecyles
    dateFormat  YYYY-MM-DD
    axisFormat  %Y
"
      ia = projects.filter { |p| p[:focus_area].include?('ia') }
      doma = projects.filter { |p| p[:focus_area].include?('doma') || p[:focus_area].include?('osglhc') }
      as = projects - ia - doma
      { ia: ia, doma: doma, as: as }.each do |sec, val|
        result += "\n    section #{sec}\n"
        result += make_section(val)
      end
      result += "\n</div>"
      result
    end

    def gantt_project(projects_raw, name)
      projects = process_projects(projects_raw)
      result = "<div class=\"mermaid\">
gantt
    title #{name} project lifecyles
    dateFormat  YYYY-MM-DD
    axisFormat  %Y
"
      result += make_section(projects)
      result += '</div>'
      result
    end
  end
end

Liquid::Template.register_filter(IrisHep::GanttFilters)
