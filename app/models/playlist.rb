class Playlist < ApplicationRecord
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs

  def self.longest_length
    self.joins(:songs).group(:id).select('playlists.*, sum(length) as sum_length').order(sum_length: :desc).limit(1).first
  end
end
