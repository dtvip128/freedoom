# config valid for current version and patch releases of Capistrano
lock "~> 3.17.2"

set :application, 'freedoom'
set :user, 'deploy'
# Repository github của bạn. Tạo 1 repo mới trên github
set :repo_url, 'git@github.com:dtvip128/freedoom.git'
set :branch, :main
set :deploy_to, '/home/deploy/freedoom'
set :pty, true
set :linked_files, %w{config/database.yml config/application.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :keep_releases, 5
set :rvm_type, :user
set :rvm_ruby_version, 'ruby-2.7.7'

set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :shared_dir, '/home/deploy/shared'
set :puma_state, "#{shared_dir}/tmp/pids/puma.state"
set :puma_pid, "#{shared_dir}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_dir}/tmp/sockets/puma.sock"    #accept array for multi-bind
set :puma_conf, "#{shared_dir}/puma.rb"
set :puma_access_log, "#{shared_dir}/log/puma_error.log"
set :puma_error_log, "#{shared_dir}/log/puma_access.log"
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 8]
set :puma_workers, 0
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :puma_preload_app, false
