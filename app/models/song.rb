class Song < ApplicationRecord
  belongs_to :artist

# describe '#artist' do
#   def artist
#     Artist.find(self.artist_id)
#   end

# describe '#artist_name' do
  def artist_name
    self.artist.name
  end

# describe '#other_artist_songs' do
  def other_artist_songs
    self.artist.songs.where.not(id: self.id)
  end
end
