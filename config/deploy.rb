# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :rails_env, 'production'

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "~/rails"     # Overriden within stage file

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# --------------------------------------------
# Capistrano/RVM and Passenger
# --------------------------------------------
# set :rvm_type, :auto
set :rvm_ruby_version, '2.6.3'

set :passenger_restart_with_touch, true

# --------------------------------------------
# Repository
# --------------------------------------------
set :repo_url, "git@github.com:javinto/miniracertest.git"
set :deploy_via, :remote_cache
set :copy_exclude, [ '.git' ]

# Default value for :linked_files is []
append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', '.bundle'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
