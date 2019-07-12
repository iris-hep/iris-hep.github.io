# coding: utf-8

require 'rake/clean'


# If no task given, build and check
task :default => :test

# Support clean and clobber tasks
CLEAN << '_site'
CLOBBER << '_cache' << '.sass-cache'

desc 'Preview on a local machine'
task :serve do
  trap('SIGINT') { exit }
  jekyll 'serve', :incremental
end

desc 'Build on a local machine'
task :build do
  jekyll 'build'
end


# See https://github.com/gjtorikian/html-proofer#configuration
COMMON_OPTIONS = {
  assume_extension: true,
  allow_hash_href: true,
  url_swap: { %r{https://localhost:4000/} => '' }
}

TEST_OPTIONS = {
  url_ignore: [
    'Unknown',
    'http://vassil.vassilev.info',
    %r{https://www.ci.uchicago.edu/profile/.*}]
}


desc 'Check links and things'
task :test => :build do
  html_proofer COMMON_OPTIONS, TEST_OPTIONS
end

desc 'Stronger check for missing options - will show up as warnings on Travis'
task :check => :build do
  html_proofer COMMON_OPTIONS
end



### Support functions ###

# Run the jekyll command, with arguments
# (symbols are long options, hashes are long options with arguments)
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

# Run HTMLProofer
def html_proofer(*options)
  require 'html-proofer'
  begin
    HTMLProofer.check_directory('./_site', options.inject(:merge)).run
  rescue RuntimeError => output
    abort output.message
  end
end
