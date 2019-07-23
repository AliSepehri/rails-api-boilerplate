# Change to match your CPU core count
workers 1

# Min and Max threads per worker
threads 1, 6

app_dir = File.expand_path('../..', __dir__)

# Default to production
rails_env = ENV['RAILS_ENV'] || 'production'
environment rails_env

port = ENV.fetch('EXPOSE_PORT') { 3000 }

# Set up socket location
# bind "unix://#{app_dir}/sockets/puma.sock"
bind "tcp://0.0.0.0:#{port}"

# Logging
stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true

# Set master PID and state locations
pidfile "#{app_dir}/tmp/pids/puma.pid"
state_path "#{app_dir}/tmp/pids/puma.state"
activate_control_app

on_worker_boot do
  require 'active_record'
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
end
