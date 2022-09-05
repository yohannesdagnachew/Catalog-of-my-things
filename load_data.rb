# frozen_string_literal: true

require 'json'

module LoadData # rubocop:disable Style/Documentation
  def load_musics
    if File.exist?('./data/musics.json')
      musics_json = File.read('./data/musics.json')
      musics_hash = JSON.parse(musics_json)
      musics_hash.map do |music_hash|
        MusicAlbum.new(music_hash['publish_date'], music_hash['on_spotify'])
      end
    else
      []
    end
  end

  def load_genres
    if File.exist?('./data/genres.json')
      genres_json = File.read('./data/genres.json')
      genres_hash = JSON.parse(genres_json)
      genres_hash.map do |genre_hash|
        Genre.new(genre_hash['name'])
      end
    else
      []
    end
  end
end
