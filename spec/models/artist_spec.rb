require 'rails_helper'

RSpec.describe Artist do
   describe "relationships" do
      it { should have_many :songs }
   end

   describe "instance methods" do
      it "#average_song_length" do
         carly = Artist.create!(name: "Carly Rae Jepsen")
         song_1 = Song.create!(title:       "I Really Like You",
                     length:      208,
                     play_count:  243810867, 
                     artist: carly)
         song_2 = Song.create!(title: "Call Me Maybe",
                              length:      199,
                              play_count:  1214722172, 
                              artist_id: carly.id)

         expect(carly.average_song_length).to eq(203.5)
      end

      ## Note: Both methods #average_song_length and #total_song_count are created as Model methods on Artist because we want to ask the database for this data from the Model, not from the View or Controller. We unit test them in the model test so we can ensure the functionality works at the model level. We test that the value is *present* in the Feature test, not that the value is necessarily correct. 

      it "#total_song_count" do
         carly = Artist.create!(name: "Carly Rae Jepsen")
         song_1 = Song.create!(title:       "I Really Like You",
                     length:      208,
                     play_count:  243810867, 
                     artist: carly)
         song_2 = Song.create!(title: "Call Me Maybe",
                              length:      199,
                              play_count:  1214722172, 
                              artist_id: carly.id)

         expect(carly.total_song_count).to eq(2)
      end
   end
end
