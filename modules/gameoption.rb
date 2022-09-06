# Game options module
module Gameoptions
  def add_new_game
    name = take_input_label('Enter the name of the game')
    last_played_at = take_input_label('Enter the date of the last played')
    date = take_input_label('Enter the publish date of the game')
    Game.new(date, name, last_played_at)
  end

  def create_game
    game = add_new_game
    choice = take_input_label('Do yo want to add new author of game[1] or add existing author[2]')
    choice = choice.to_i
    case choice
    when 1
      author = add_new_author
      @authors << author.add_item(game)
    when 2
      author = add_existing_author
      author.add_item(game)
    end
  end

  def add_existing_author
    puts 'Existing authors'
    list_authors
    id = take_input_label('Enter the id of the author')
    id = id.to_i
    @authors.find { |author| author.id == id }
  end

  def add_new_author
    author_first_name = take_input_label('Enter the author first_name')
    author_last_name = take_input_label('Enter the author last name')
    Author.new(author_first_name, author_last_name)
  end

  def list_authors
    puts 'Authors'
    puts 'ID  |  First Name  |  Last Name'
    puts '--------------------------------'
    @authors.each do |author|
      puts "#{author.id} |  #{author.name}   |  #{author.last_name}"
    end
  end

  def list_games
    puts 'Games'
    puts '     Name     |     Author'
    puts '--------------------------------'
    @authors.each do |games|
      games.items.each do |game|
        puts "#{game.multiplayer}     #{game.author.name}"
      end
    end
  end

  def put_lable(label)
    puts label.to_s
  end

  def take_input_label(label)
    print "#{label}: "
    gets.chomp
  end
end
