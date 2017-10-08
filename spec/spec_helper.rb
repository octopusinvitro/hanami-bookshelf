# frozen_string_literal: true

# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require_relative '../config/environment'
require 'minitest/autorun'
require 'pry'

Hanami.boot

def books_template_path
  'apps/web/templates/books/index.html.erb'
end
