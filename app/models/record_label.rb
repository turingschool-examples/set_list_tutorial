class RecordLabel < ApplicationRecord
  has_many :artists

# describe '#songs'
  def songs
    # normally, we would want to avoid using Ruby to process data
    # however, that would require concepts we haven't covered in class yet
    self.artists.flat_map do |artist|
      artist.songs
    end
  end
  # We can also use this association with the through: syntax to achieve this goal
  # This syntax will be covered in the Many to Many class
  # has_many :songs, through: :artists
end
