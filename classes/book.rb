# frozen_string_literal: true

require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publish_date, publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    super || cover_state == 'bad'
  end
end

book = Book.new('2018-06-30', 'Longhorn', 'bad')
p book.move_to_archive
