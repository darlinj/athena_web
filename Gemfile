# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'devise_invitable'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara-email'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'capistrano', '~> 3.10'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capybara-screenshot'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails_real_favicon'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
