# frozen_string_literal: true

source 'https://rubygems.org'

ruby '>= 3.1.0'

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
gem 'jekyll'

# This is needed for GitHub Flavored Markdown
gem 'kramdown-parser-gfm'

group :development do
  # Check resulting HTML for dead links and other issues
  gem 'html-proofer', require: false

  # Allow running this with rake (especially for rake check)
  gem 'rake', require: false

  # Verify good coding practices in Ruby files
  gem 'rubocop', require: false

  # Extension for Rake files
  gem 'rubocop-rake', require: false
end

# This is the default theme for new Jekyll sites. You may change this to anything you like.
gem 'minima'

# Removed from the stdlib
gem 'benchmark'
gem 'logger'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-feed'
  gem 'jekyll-include-cache'
  gem 'jekyll-indico'
  # gem 'jekyll-indico', github: 'iris-hep/jekyll-indico', branch: 'main'
end

# This is used like a library, not as a plugin
gem 'jekyll-last-modified-at'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Needed by Nokogiri
gem 'pkg-config'

# Performance-booster for watching directories on Windows
gem 'wdm' if Gem.win_platform?

# Required on Ruby 3+ (next Jekyll will fix this missing dep)
gem 'webrick'

# Required on Ruby 2.6 (polyfill)
gem 'ruby-next'
