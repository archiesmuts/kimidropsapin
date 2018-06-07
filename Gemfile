source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# This will load rack-timeout and set it up as a Rails middleware using the default timeout of 15s
# gem "rack-timeout"
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem "recaptcha", require: "recaptcha/rails"

gem 'high_voltage'
gem 'administrate', '~> 0.10.0'
gem 'font_awesome5_rails'
gem 'data-confirm-modal', '~> 1.6.2'

gem 'friendly_id', '~> 5.2', '>= 5.2.4'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'bootstrap', '~> 4.1', '>= 4.1.1'
# the maclover/trix gem does not work with rails 5.2
gem 'trix', git: 'https://github.com/DRBragg/trix'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
# gem 'aws-sdk-s3', '~> 1.13', require: false
# gem 'image_processing', '~> 1.2'
gem 'sendgrid-ruby', '~> 5.2'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rails-assets-holderjs', source: 'https://rails-assets.org'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Better Errors replaces the standard Rails error page with a much better and more useful error page.
  gem 'better_errors', '~> 2.4'

  # binding_of_caller is optional, but is necessary to use Better Errors' advanced features (REPL, local/instance variable inspection, pretty stack frame names).
  gem "binding_of_caller"
   # Generates Rails application layout files for various front-end frameworks.
  gem 'rails_layout'

  gem 'faker', '~> 1.6', '>= 1.6.3'
  gem 'letter_opener', '~> 1.6'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '2.5.1'
