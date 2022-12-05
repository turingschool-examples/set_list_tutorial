require 'rails_helper'

RSpec.describe Song, type: :model do
  it {should belong_to :artist}

  describe 'instance methods' do
    describe 'last_updated' do
      it 'returns the date the instance was last updated' do
        artist = Artist.create(name: 'Prince')
        song = artist.songs.create(title: 'kiss', play_count: 5832, length: 700)
        updated_time = Time.zone.now

        song.update(title: 'Kiss', updated_at: updated_time)

        expect(song.last_updated).to eq(updated_time.strftime("%Y-%m-%d"))
      end
    end

    describe "#artist_name" do
      it "returns the Artist's name of this song" do
        artist = Artist.create(name: 'Prince')
        song = artist.songs.create(title: 'kiss', play_count: 5832, length: 700)

        expect(song.artist_name).to eq("Prince")
      end

    end

    describe "#num_songs_artist" do
      it "Returns the number of songs for an artist that have at least 1 play and a length greater than 0" do
        prince = Artist.create(name: 'Prince')
        kiss = prince.songs.create(title: 'Kiss', play_count: 8962011, length: 300)
        beret = prince.songs.create(title: 'Raspberry Beret', play_count: 462291, length: 300)
        rain = prince.songs.create(title: 'Purple Rain', play_count: 8000000, length: 300)
        other = prince.songs.create(title: "Unreleased song", play_count: 1, length: 0)

        expect(prince.num_songs_artist).to eq([kiss, beret, rain])

      end
    end


  end

  describe 'class methods' do
    describe 'sort_by_recently_created' do
      it 'returns songs ordered by most recent creation' do
        artist = Artist.create(name: 'Prince')
        kiss = artist.songs.create(title: 'Kiss', play_count: 8962011, length: 300)
        beret = artist.songs.create(title: 'Raspberry Beret', play_count: 462291, length: 300)
        rain = artist.songs.create(title: 'Purple Rain', play_count: 8000000, length: 300)
        expect(Song.sort_by_recently_created).to eq([rain, beret, kiss])
      end

      it "Returns all songs sorted by title alphabetically" do
        artist = Artist.create(name: 'Prince')
        kiss = artist.songs.create(title: 'Kiss', play_count: 8962011, length: 300)
        beret = artist.songs.create(title: 'Raspberry Beret', play_count: 462291, length: 300)
        rain = artist.songs.create(title: 'Purple Rain', play_count: 8000000, length: 300)
        expect(Song.sort_alphabetically).to eq([kiss, rain, beret])
      end
    end

    describe ".shortest_songs(x)" do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 99)
        @other_song = @prince.songs.create!(title: 'Another Prince Song', length: 1, play_count: 99)
      end

      it "returns the X shortest songs, where x is an argument for the method" do
        expect(Song.shortest_songs(2)).to eq([@other_song, @beret])
        expect(Song.shortest_songs(3)).to eq([@other_song, @beret, @purple])
        expect(Song.shortest_songs(1)).to eq([@other_song])
      end


    end

    describe ".love_songs" do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 99)
        @other_song = @prince.songs.create!(title: 'Another Prince Song', length: 1, play_count: 99)
        @love_song = @prince.songs.create!(title: 'Love', length:  682, play_count: 22222)
        @lovely_day_cover = @prince.songs.create!(title: 'Lovely Day (cover)', length:  458, play_count: 120)
      end

      it "Return a list of songs that have a title that contains the word 'love'" do
        expect(Song.love_songs).to eq([@love_song, @lovely_day_cover])
      end
    end


    describe ".three_most_played_with_length_updated_recently" do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 9999)
        @other_song = @prince.songs.create!(title: 'Another Prince Song', length: 1, play_count: 99)
        @love_song = @prince.songs.create!(title: 'Love', length:  682, play_count: 22222)
        @lovely_day_cover = @prince.songs.create!(title: 'Lovely Day (cover)', length:  458, play_count: 120)
      end
      it "returns the 3 songs that have the most plays, a length greater than x, and were updated within the last three days" do
        four_days_ago = Time.now - 4.days
        @love_song.update(updated_at: four_days_ago)
        @purple.update(updated_at: four_days_ago)
        expected = [@beret, @lovely_day_cover]
        expect(Song.three_most_played_with_length_updated_recently(350)).to eq(expected)
      end 
    end



  end
end
