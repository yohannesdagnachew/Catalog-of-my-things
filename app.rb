require_relative './modules/music_album'
require_relative './classes/music_album'
require_relative './classes/genre'
require_relative './classes/book'
require_relative './classes/label'

require_relative 'modules/gameoption'
require_relative 'modules/bookoption'
require_relative 'modules/labeloption'
require_relative 'classes/game'
require_relative 'classes/author'

class App
  include Music
  include BookOptions
  include LabelOptions
  include Gameoptions

  def initialize
    @music_album = load_musics
    @genres = load_genres
    @authors = []
    @books = []
    @labels = []
  end

  def run
    choice = 0
    while choice != 14
      options
      choice = gets.chomp.to_i
      check(choice)
      check2(choice)
      check3(choice)
    end
  end

  def check(choice)
    case choice
    when 1
      list_books
    when 2
      list_albums
    when 3
      list_games
    when 4
      list_genres
    end
  end

  def check2(choice)
    case choice
    when 5
      list_labels
    when 7
      create_book
    when 10
      create_genres
    when 11
      create_label
    end
  end

  def check3(choice)
    case choice
    when 6
      list_authors
    when 8
      create_album
    when 9
      create_game
    end
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '1  - List all books'
    puts '2  - List all music albums'
    puts '3  - List all games'
    puts '4  - List all genres'
    puts '5  - List all labels'
    puts '6  - List all authors'
    puts '7  - Add a book'
    puts '8  - Add a music album'
    puts '9  - Add a game'
    puts '10 - Add a genres'
    puts '11 - Add a label'
    puts '14 - Quit App'
  end
end
