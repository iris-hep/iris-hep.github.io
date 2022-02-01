# frozen_string_literal: true

require 'rake/clean'
require 'rubocop/rake_task'

# If no task given, build
task default: :build

# Support clean and clobber tasks
CLEAN << '_site'
CLOBBER << '_cache' << '.sass-cache' << '_data/indico'

desc 'Preview on a local machine'
task :serve do
  trap('SIGINT') { exit }
  jekyll 'serve', :incremental, :livereload
end

desc 'Build on a local machine'
task :build do
  jekyll 'build', :verbose, :trace
end

desc 'Cache the indico access'
task :cache do
  sh 'jekyll-indico-cache'
end

RuboCop::RakeTask.new(:rubocop)

# See https://github.com/gjtorikian/html-proofer#configuration
COMMON_OPTIONS = {
  assume_extension: true,
  allow_hash_href: true,
  url_swap: { %r{https://localhost:4000/} => '' }
}.freeze

LIGHT_OPTIONS = {
  url_ignore: [
    'Unknown',
    'http://vassil.vassilev.info',
    'https://indico.lal.in2p3.fr/event/4754/#sc-19-8-machine-learning-to-pr', # Fix
    %r{https://www.ci.uchicago.edu/profile/.*}
  ]
}.freeze

desc 'Check already built site'
task :checkonly do
  html_proofer COMMON_OPTIONS, LIGHT_OPTIONS
end

desc 'Check links and things'
task check: %i[build checkonly]

desc 'Stronger check for missing options - will show up as warnings on Travis'
task checkall: :build do
  html_proofer COMMON_OPTIONS
end

### Support functions ###

# Run the jekyll command, with arguments
# (symbols are long options, hashes are long options with arguments)
def jekyll(*directives)
  directives.map! do |x|
    case x
    when Symbol
      "--#{x}"
    when Hash
      x.map { |k, v| "--#{k}=#{v}" }.join(' ')
    else x
    end
  end
  sh "jekyll #{directives.join(' ')}"
end

# Run HTMLProofer
def html_proofer(*options)
  require 'html-proofer'
  begin
    HTMLProofer.check_directory('./_site', options.inject(:merge)).run
  rescue RuntimeError => e
    abort e.message
  end
end
