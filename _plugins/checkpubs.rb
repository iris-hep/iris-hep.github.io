# frozen_string_literal: true

require_relative 'checks'
require_relative 'checks_extend'
require 'set'

module Checks
  # This is a Jekyll Generator
  class CheckPubInfo < Jekyll::Generator
    # Main entry point for Jekyll
    def generate(site)
      @site = site

      @site.data['publications'].each do |name, pub_hash|
        msg = "Publication in _data/publications/#{name}.yaml"

        ensure_array(pub_hash, 'focus-area')
        ensure_array(pub_hash, 'challenge-area')
        ensure_array(pub_hash, 'project')

        local_fa = pub_hash['focus-area']&.to_set
        local_ca = pub_hash['challenge-area']&.to_set
        projectless = site.config['iris-hep']['projectless-focus-areas'].to_set

        publication = Record.new(msg, pub_hash)
        publication.key 'focus-area', set: focus_areas if pub_hash.key? 'focus-area'
        publication.key 'challenge-area', set: focus_areas if pub_hash.key? 'challenge-area'
        publication.key 'project', :optional, set: projects unless local_fa && local_fa < projectless && local_ca && local_ca < projectless

        publication.print_warnings
      end
    end

    include IrisHep::GetInfoForChecks
  end
end
