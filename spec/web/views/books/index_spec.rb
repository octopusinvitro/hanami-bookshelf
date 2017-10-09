# frozen_string_literal: true

require 'spec_helper'
require_relative '../../../../apps/web/views/books/index'

describe Web::Views::Books::Index do
  let(:exposures) { Hash[books: []] }
  let(:template) { Hanami::View::Template.new(books_index_template_path) }
  let(:view) { Web::Views::Books::Index.new(template, exposures) }
  let(:rendered) { view.render }

  it 'exposes #books' do
    view.books.must_equal exposures.fetch(:books)
  end

  describe 'when there are no books' do
    it 'shows a placeholder message' do
      rendered.must_include(placeholder)
    end
  end

  describe 'when there are books' do
    let(:book1) { Book.new(title: 'Refactoring', author: 'Martin Fowler') }
    let(:book2) { Book.new(title: 'DDD', author: 'Eric Evans') }
    let(:exposures) { Hash[books: [book1, book2]] }

    it 'lists them all' do
      rendered.scan(/class="book"/).count.must_equal 2
      rendered.must_include('Refactoring')
      rendered.must_include('DDD')
    end

    it 'hides the placeholder message' do
      rendered.wont_include(placeholder)
    end
  end

  def placeholder
    '<p class="placeholder">There are no books yet.</p>'
  end
end
