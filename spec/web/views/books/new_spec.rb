# frozen_string_literal: true

require 'spec_helper'
require 'ostruct'
require_relative '../../../../apps/web/views/books/new'

describe Web::Views::Books::New do
  let(:params) do
    OpenStruct.new(
      valid?: false,
      error_messages: ['Title must be filled', 'Author must be filled']
    )
  end
  let(:exposures) { Hash[params: params] }
  let(:template) { Hanami::View::Template.new(books_new_template_path) }
  let(:view) { Web::Views::Books::New.new(template, exposures) }
  let(:rendered) { view.render }

  it 'displays list of errors when params contains errors' do
    rendered.must_include('There was a problem with your submission')
    rendered.must_include('Title must be filled')
    rendered.must_include('Author must be filled')
  end
end
