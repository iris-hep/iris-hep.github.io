# frozen_string_literal: true

module IrisHep
  # Extends Checks::Record with helpers useful for checking focus-areas and projects
  module GetInfoForChecks
    def focus_areas
      @focus_areas ||= begin
        extras = @site.config['iris-hep']['extra-focus-areas'].to_set
        focus_area_pages = @site.pages.select { |p| p['pagetype'] == 'focus-area' }
        locals = focus_area_pages.to_set { |p| File.basename(p.name, '.*') }
        extras | locals
      end
    end

    def projects
      @projects ||= begin
        project_pages = @site.pages.select { |p| p['pagetype'] == 'project' }
        project_pages.each do |p|
          msg = "Filename #{p.name} must match the shortname #{p['shortname']}"
          raise Checks::Error, msg unless File.basename(p.name, '.*') == p['shortname']
        end
        project_pages.to_set { |p| File.basename(p.name, '.*') }
      end
    end

    def challenge_areas
      @challenge_areas ||= begin
        challenge_area_pages = @site.pages.select { |p| p['pagetype'] == 'challenge-area' }
        challenge_area_pages.to_set { |p| File.basename(p.name, '.*') }
      end
    end

    def ensure_array(hash, key)
      return unless hash.key? key
      return if hash[key].is_a? Array

      hash[key] = hash[key].nil? ? [] : [hash[key]]
    end
  end
end
