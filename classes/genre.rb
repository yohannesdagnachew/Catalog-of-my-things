# frozen_string_literal: true

require_relative 'item'

# MusicAlbum
class Genre
  attr_accessor :name
  attr_reader :items

  def initialize(name)
    @id = rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
