class Song < ApplicationRecord
  belongs_to :artist
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  def self.on_all_playlists
    self.joins(:playlist_songs).distinct
  end
end
