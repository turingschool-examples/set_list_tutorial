require 'rails_helper'

RSpec.describe RecordLabel do
  it {should have_many :artists}

  describe '#songs' do
    it 'can return all songs for all artists for the record label' do
      label = RecordLabel.create!(name: 'Big Wig Records')
      prince = label.artists.create!(name: 'Prince')
      taylor = label.artists.create!(name: 'Taylor Swift')
      purple = prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
      beret = prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 99)
      antihero = taylor.songs.create!(title: 'Antihero', length: 500, play_count: 48939)

      expect(label.songs).to eq([purple, beret, antihero])
    end
  end
end
