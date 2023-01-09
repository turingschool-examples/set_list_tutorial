require 'rails_helper'

RSpec.describe Song, type: :model do
  it {should belong_to :artist}

  describe 'class methods' do
    describe '.on_all_playlists' do
      it 'returns a unique list of songs on all playlists' do
        load_test_data
        # call sort on both expected and actual values because we don't care about order
        expect(Song.on_all_playlists.sort).to eq([@beret, @bad_guy, @purple_rain, @change, @talk, @vagabond].sort)
      end
    end
  end
end
