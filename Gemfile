source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# # Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Interface to the PostgreSQL RDBMS.
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.11'
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

# Flexible authentication solution for Rails with Warden http://blog.plataformatec.com.br/tag/devise/
gem 'devise'
# HTML Abstraction Markup Language - A Markup Haiku http://haml.info
gem 'haml'
gem "haml-rails", "~> 1.0"
# Integrates Bulma with the rails asset pipeline. A modern CSS framework based on Flexbox.
gem "bulma-rails", "~> 0.7.1"
# A gem to automate using jQuery with Rails
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
# Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup.
gem 'simple_form'
# FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for ActiveRecord. It allows you to create pretty URL’s and work with human-friendly strings as if they were numeric ids for ActiveRecord models. http://norman.github.io/friendly_id/
gem 'friendly_id', '~> 5.2', '>= 5.2.4'
# The safe Markdown parser, reloaded.
gem 'redcarpet', '~> 3.4'
# Fast and easy syntax highlighting for selected languages, written in Ruby. http://coderay.rubychan.de/
gem 'coderay', '~> 1.1', '>= 1.1.2'
# A configurable and documented Rails view helper for adding gravatars into your Rails application
gem 'gravatar_image_tag', '~> 1.2'

## Gems utilizadas com o seguinte tutorial https://github.com/RolifyCommunity/rolify/wiki/Devise---CanCanCan---rolify-Tutorial
# The authorization Gem for Ruby on Rails.
gem 'cancancan', '~> 2.2'
# Role management library with resource scoping http://rolifycommunity.github.com/rol…
gem 'rolify', '~> 5.2'

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

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
  # gem which causes rails console to open pry. It therefore depends on pry.
  gem 'pry-rails'
  # Better error page for Rack apps
  gem "better_errors"
  gem "binding_of_caller"
  # Guard is a command line tool to easily handle events on file system modifications
  gem 'guard'
  # Guard::LiveReload automatically reload your browser when 'view' files are modified.
  gem 'guard-livereload', '~> 2.5', require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
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
