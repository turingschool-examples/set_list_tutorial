require 'rails_helper'

RSpec.describe Artist do
  it {should validate_presence_of :name}
  
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 99)
        @other_song = @prince.songs.create!(title: 'Another Prince Song', length: 1, play_count: 99)
      end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(503.33)
      end
    end

    describe '#playlists_featured_on' do
      it 'returns all playlists that have songs from this artist' do
        load_test_data

        Playlist.create!(name: 'Walking')
        expect(@prince.playlists_featured_on).to eq([@chill_evening, @summer_rewind, @workout])
      end
    end
  end

  describe 'class methods' do
    before :each do
      load_test_data
    end

    describe '.on_playlist_created_after' do
      it 'returns all Artists on all playlists created after a given date' do
        expect(Artist.on_playlist_created_after('01/01/2020').sort).to eq([@prince, @billie, @caamp].sort)
      end
    end
    
    describe '#top_by_total_plays' do
      it 'returns the top artists with the highest total play counts' do
        expect(Artist.top_by_total_plays(3).sort).to eq([@rtj, @billie, @lcd].sort)
      end

      it 'can limit how many artists are returned' do
        expect(Artist.top_by_total_plays(1)).to eq([@rtj])
      end
    end
    
    describe '.on_three_playlists' do
      it 'returns any artists that have songs on 3 playlists' do
        expect(Artist.on_three_playlists).to eq([@prince])
      end
    end
  end
end
