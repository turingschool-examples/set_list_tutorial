class Artist < ApplicationRecord
  has_many :songs
  has_many :playlist_songs, through: :songs
  has_many :playlists, through: :playlist_songs

  validates_presence_of :name
  
  def average_song_length
    self.songs.average(:length)
  end

  def self.on_playlist_created_after(date)
    self.joins(:playlists).where("playlists.created_at >= '2020-01-01'").distinct
  end

  def playlists_featured_on
    self.playlists.order('playlists.name')
  end

  def self.top_by_total_plays(limit)
    self.joins(:songs).group(:id).select('artists.*, sum(songs.play_count) as total_plays').order('total_plays desc').limit(limit)
  end

  def self.on_three_playlists
    self.joins(:playlists).group(:id).having('count(distinct playlists.id) > ?', 2)
  end
  
  def self.with_song_play_count(threshold)
    joins(:songs).where('songs.play_count >= ?', threshold).distinct
  end
end
