# frozen_string_literal: true

require_relative 'music_album'
require_relative './classes/music_album'
require_relative './classes/genre'

class App # rubocop:disable Style/Documentation
  include Music

  def initialize
    @music_album = load_musics
    @genres = load_genres
  end

  def run
    choice = 0
    while choice != 14
      options
      choice = gets.chomp.to_i
      check(choice)
    end
  end

  def check(choice)
    case choice
    when 1
      list_books
    when 2
      list_albums
    when 3
      list_movies
    when 4
      list_games
    when 5
      list_genres
    when 6
      list_labels
    when 7
      list_authors
    when 8
      list_sources
    when 9
      create_book
    when 15
      create_genres
    when 11
      create_album
    when 12
      create_movie
    when 13
      create_game
    end
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '1  - List all books'
    puts '2  - List all music albums'
    puts '3  - List all movies'
    puts '4  - List of games'
    puts '5  - List all genres'
    puts '6  - List all labels'
    puts '8  - List all authors'
    puts '9  - List all sources'
    puts '10 - Add a book'
    puts '11 - Add a music album'
    puts '12 - Add a movie'
    puts '13 - Add a game'
    puts '15 - Add a genres'
    puts '14 - Quit App'
  end
end
