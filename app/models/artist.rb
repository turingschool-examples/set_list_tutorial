class Artist < ApplicationRecord
  has_many :songs

  def average_song_length
    self.songs.average(:length)
  end

# describe '#songs' do
  # def songs
  #   Song.where(artist_id: self.id)
  # end

# describe '#song_count'
  def song_count
    self.songs.count
  end

# describe '#wrote_song?' do
  def wrote_song?(song)
    # Version 1 WITH Assocations
    self.songs.include?(song)

    # Version 2 WITHOUT Associations
    # song.artist_id == self.id
  end
end
