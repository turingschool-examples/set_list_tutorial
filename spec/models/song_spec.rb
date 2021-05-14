require 'rails_helper'

RSpec.describe Song, type: :model do
  it {should belong_to :artist}

  describe 'instance methods' do
    before :each do
      @prince = Artist.create!(name: 'Prince')
      @purple = Song.create!(title: 'Purple Rain', length: 845, play_count: 8599, artist_id: @prince.id)
      @beret = Song.create!(title: 'Raspberry Beret', length: 664, play_count: 99, artist_id: @prince.id)
      @other_song = Song.create!(title: 'Another Prince Song', length: 1, play_count: 99, artist_id: @prince.id)
    end

    describe '#artist' do
      it 'returns the associated artist object' do
        # First, Comment out the has_many :songs Association from the Artist model
        # Then, make this test pass WITHOUT using Associations
        expect(@purple.artist).to eq(@prince)
      end
    end

    describe '#artist_name' do
      it 'returns the artists name' do
        # Make this test pass WITH Associations
        expect(@purple.artist_name).to eq('Prince')
      end
    end

    describe '#other_artist_songs' do
      it 'returns the other songs by the artist and does not include itself' do
        # Make this test pass WITH Associations
        expect(@purple.other_artist_songs).to eq([@beret, @other_song])
      end
    end
  end
end
