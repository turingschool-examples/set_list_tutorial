require "rails_helper"

RSpec.describe Playlist, type: :model do
  describe "relationships" do
    it { should have_many :playlist_songs}
  end

  describe "class methods" do
    before :each do
      test_data # check the `spec_helper` file to see which songs are in the Summer Rewind Playlist. 
    end
    it "Get the names of all Artists from the Summer Rewind Playlist. " do
      # Hint: Use the @summer_rewind playlist for this query. 

      query = Artist.joins(songs: :playlists).where("playlist_id = #{@summer_rewind.id}").pluck("artists.name")

      expect(query.sort).to eq(["Prince", "Billie Eilish"])
    end
  end
end
