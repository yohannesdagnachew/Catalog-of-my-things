require_relative 'music_album'
require_relative './classes/music_album'
require_relative './classes/genre'

require_relative 'modules/gameoption'
require_relative 'classes/game'
require_relative 'classes/author'

class App
  include Music
  include Gameoptions

  def initialize
    @music_album = load_musics
    @genres = load_genres
     @authors = []
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
      list sources
    when 8
      list_authors
    when 9
      create_book
    when 10
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
