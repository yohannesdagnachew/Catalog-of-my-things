require_relative '../classes/item'
require_relative '../classes/music_album'

describe 'MusicAlbum' do
  before :each do
    @music = MusicAlbum.new('2010-01-01', true)
  end

  it 'should be able to be archived' do
    expect(@music.can_be_archived?).to be true
  end

  it 'should not be able to be archived' do
    @music_album = MusicAlbum.new('2018-01-01', true)
    expect(@music_album.can_be_archived?).to be false
  end

  it 'should not be able to be archived' do
    @music_album = MusicAlbum.new('2010-01-01', false)
    expect(@music_album.can_be_archived?).to be false
  end
end
