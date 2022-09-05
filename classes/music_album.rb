# frozen_string_literal: true

require_relative 'item'

# MusicAlbum
class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify: false)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super == true && @on_spotify = true
  end
end

music = MusicAlbum.new('2012-01-01')
puts music.can_be_archived?
