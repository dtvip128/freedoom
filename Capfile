require "capistrano/setup"
require "capistrano/deploy"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require "capistrano/rails"
require "capistrano/passenger"
require "capistrano/rbenv"

set :rbenv_type, :user
set :rbenv_ruby, "3.2.1"

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
