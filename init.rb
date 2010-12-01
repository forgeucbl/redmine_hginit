require 'redmine'

require 'dispatcher'

Dispatcher.to_prepare :redmine_hginit do
  require_dependency 'hginit_project_create'
  unless Project.included_modules.include? HgInit::ProjectPatch
    Project.send(:include, HgInit::ProjectPatch)
  end
end

Redmine::Plugin.register :redmine_hginit do
  name 'Redmine Hginit plugin'
  author 'Forge UCBL'
  description 'Allow a project to create hg repo automatically'
  version '0.0.1'
  url 'http://www.univ-lyon1.fr'
  author_url 'http://www.univ-lyon1.fr'
  settings :default => {
  	:repo_dir => "/var/repo"
  },
           :partial => 'settings/change_settings'
end
