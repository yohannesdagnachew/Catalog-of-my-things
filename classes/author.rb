# frozen_string_literal: true

# Author class
class Author
  attr_accessor :name, :last_name, :items
  attr_reader :id

  def initialize(first_name, last_name)
    @name = first_name
    @last_name = last_name
    @items = []
    @id = rand(1..1000)
  end

  def add_item(game)
    @items << game
    game.add_author = self
  end
end
