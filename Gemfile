# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.4.1'

gem 'hanami',       '~> 1.0'
gem 'hanami-model', '~> 1.0'
gem 'rake'

gem 'sqlite3'

group :development do
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'capybara'
  gem 'minitest'
  gem 'rubocop'
end

group :production do
  # gem 'puma'
end
