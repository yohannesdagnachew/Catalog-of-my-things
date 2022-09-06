# frozen_string_literal: true

require_relative 'item'
require 'date'

# Game class
class Game < Item
  attr_reader :multiplayer, :last_played_at
  attr_accessor :author

  def initialize(date, multiplayer, last_played_at)
    super(date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && Date.today - Date.parse(@last_played_at) > 1464
  end
end
