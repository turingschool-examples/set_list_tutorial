class Song < ApplicationRecord
  belongs_to :artist

  def self.sort_by_recently_created
    Song.order(created_at: :desc)
  end

  def self.sort_alphabetically
    Song.order(title: :asc)
  end

  def last_updated
    self.updated_at.strftime("%Y-%m-%d")
  end

   def self.shortest_songs(num) 
    Song.order(length: :asc).limit(num)
  end

  def artist_name
    artist.name

    # alternatively, without using associations: 
    # Artist.where(id: self.artist.id).first.name
  end

  def self.love_songs
    Song.where("title ILIKE '%love%'")
  end

  def self.three_most_played_with_length_updated_recently(length)
    three_days_ago = Time.now - 3.days
    self.where('length > ?', length).where('updated_at > ?', three_days_ago).order(play_count: :desc).limit(3)
  end
end
