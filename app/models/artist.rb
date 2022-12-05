class Artist < ApplicationRecord
  has_many :songs

  def average_song_length
    songs.average(:length)
  end

  def self.newest_first
    Artist.order(created_at: :desc)
  end

  def last_updated
    self.updated_at.strftime("%Y-%m-%d")
  end

  def self.by_name
    order(:name)
  end

  def songs_alphabetically
    songs.order(:title)
  end

  def shortest_songs(num)
    songs.order(length: :asc).limit(num)
  end

  def num_songs_artist
    songs.where("play_count >= 1").where("length > 0")
  end

 
end
