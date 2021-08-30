require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 99)
        @other_song = @prince.songs.create!(title: 'Another Prince Song', length: 1, play_count: 99)
      end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(503.33)
      end
    end

    describe 'last_updated' do
      it 'returns the date the instance was last updated' do
        artist = Artist.create(name: 'prince')
        updated_time = Time.zone.now

        artist.update(name: 'The Artist Formerly Known as Prince', updated_at: updated_time)

        expect(artist.last_updated).to eq(updated_time.strftime("%Y-%m-%d"))
      end
    end
  end

  describe 'class methods' do
    describe 'newest_first' do
      it 'returns songs ordered by most recent creation' do
        prince = Artist.create(name: 'Prince')
        pink = Artist.create(name: 'Pink')

        expect(Artist.newest_first).to eq([pink, prince])
      end
    end

    describe '::by_name' do
      it 'returns Artists ordered by name alphabetically' do
        talking_heads = Artist.create!(name: 'Talking Heads')
        prince = Artist.create!(name: 'Prince')
        jgb = Artist.create!(name: 'Jerry Garcia Band')
        crj = Artist.create!(name: 'Carly Rae Jepsen')

        expect(Artist.by_name).to eq([crj, jgb, prince, talking_heads])
      end
    end
  end
end
