# frozen_string_literal: true

require_relative 'item'

# Author class
class Author
  attr_accessor :name, :last_name
  attr_reader :items

  def initialize(first_name, last_name)
    @name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(game)
    @items << game
    game.add_author = self
  end
end
