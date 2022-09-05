# frozen_string_literal: true

# music
module Music
  def list_albums
    puts 'List of Albums'
    @music_album.each do |album|
      puts "Publish_date: #{album.publish_date}  on_spotify: #{album.on_spotify}"
    end
  end

  def list_genres
    puts 'List of Genres'
    @genres.each do |genre|
      puts "#{@genres.index(genre) + 1}): #{genre.name}"
    end
  end

  def create_album # rubocop:disable Metrics/MethodLength
    puts 'Enter the music publish date: '
    publish_date = gets.chomp
    puts 'Is it on spotify? [y/n]: '
    on_userchoice = gets.chomp

    case on_userchoice
    when 'y'
      on_spotify = true
    when 'n'
      on_spotify = false
    end

    @music_album << MusicAlbum.new(publish_date, on_spotify)
  end

  def create_genres
    puts 'Enter the genre name: '
    name = gets.chomp
    @genres << Genre.new(name)
  end
end
