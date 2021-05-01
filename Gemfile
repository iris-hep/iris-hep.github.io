# frozen_string_literal: true

source 'https://rubygems.org'

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
gem 'jekyll', '~> 4.2.0'

# This is needed for GitHub Flavored Markdown
gem 'kramdown-parser-gfm'

group :development do
  # Check resulting HTML for dead links and other issues
  gem 'html-proofer', require: false

  # Allow running this with rake (especially for rake check)
  gem 'rake', require: false

  # Verify good coding practices in Ruby files
  # Pinning 1.12.x since 1.13 drops 2.4 support
  gem 'rubocop', '~>1.12.0', require: false

  # Extension for Rake files
  gem 'rubocop-rake', require: false
end

# This is the default theme for new Jekyll sites. You may change this to anything you like.
gem 'minima', '~> 2.5'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.15'
  gem 'jekyll-include-cache'
  gem 'jekyll-indico', '~> 0.3.0'
  # gem 'jekyll-indico', github: 'iris-hep/jekyll-indico', branch: 'main'
end

# This is used like a library, not as a plugin
gem 'jekyll-last-modified-at', '~> 1.3.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Needed by Nokogiri sometimes
gem 'pkg-config', '~> 1.1'

# Performance-booster for watching directories on Windows
gem 'wdm', '~> 0.1.0' if Gem.win_platform?

# Pinning this for now since macOS + default Ruby needs this
# Please use rbenv to pick Ruby versions; the next Jekyll release
# will not work with macOS's Ruby 2.3
gem 'ffi', '~> 1.10'
