# frozen_string_literal: true

# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require_relative '../config/environment'
require 'minitest/autorun'
require 'simplecov'
require 'coveralls'
require 'pry'

SimpleCov.add_filter 'spec'
Coveralls.wear!
Hanami.boot

def books_index_template_path
  'apps/web/templates/books/index.html.erb'
end

def books_new_template_path
  'apps/web/templates/books/new.html.erb'
end
