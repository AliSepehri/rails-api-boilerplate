source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', require: 'rack/cors'
# Simple Rails app configuration
gem 'figaro'
# Create seeds for each environment
gem 'seedbank'
# Manage background jobs
gem 'sidekiq'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # An IRB alternative and runtime developer console
  gem 'pry'
  # Avoid repeating yourself in rails console
  gem 'pry-rails'
  # A Ruby static code analyzer and formatter
  gem 'rubocop', '~> 0.58.2', require: false
  # Factory Bot Rails is a fixtures replacement with a straightforward definition syntax
  gem 'factory_bot_rails'
  # Faker is a library for generating fake data such as names, addresses, and phone numbers
  gem 'faker'
  # Rspec Rails is a testing framework for Rails
  gem 'rspec-rails', '~> 3.7'
  # Code style checking for RSpec files
  gem 'rubocop-rspec'
  # SimpleCov is a code coverage analysis tool for Ruby
  gem 'simplecov', require: false
  # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners that test common Rails functionality
  gem 'shoulda-matchers', '~> 3.1'
  # Library for stubbing and setting expectations on HTTP requests in Ruby
  gem 'webmock'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # help to kill N+1 queries and unused eager loading
  gem 'bullet'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
