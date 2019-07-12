# coding: utf-8

require 'rake/clean'

# Run the jekyll command, with arguments (symbols are long options)
def jekyll(*directives)
  directives.map! do |x|
    case x
    when Symbol
      '--' + x.to_s
    when Hash
      x.map{|k,v| "--#{k}=#{v}"}.join(" ")
    else x
    end
  end
  sh 'jekyll ' + directives.join(' ')
end

# If no task given, build and check
task :default => :check

# Support clean and clobber tasks
CLEAN << '_site'
CLOBBER << '_cache' << '.sass-cache'


desc 'Preview on a local machine'
task :serve do
  jekyll 'serve', :incremental
end

desc 'Build on a local machine'
task :build do
  jekyll 'build'
end

desc 'Check links and things'
task :check => :build do
  require 'html-proofer'
  localhost = 'https://localhost:4000/'
  options = {
    :assume_extension => true,
    :allow_hash_href => true,
    :url_swap => { /#{localhost}/ => '' }
  }
  HTMLProofer.check_directory('./_site', options).run
end
