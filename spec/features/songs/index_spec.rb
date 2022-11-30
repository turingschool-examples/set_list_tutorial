require 'rails_helper'

RSpec.describe "Songs Index", type: :feature do
   describe "In-class example" do
      # As a user, 
      # when I visit '/songs' 
      # I see each song's title and play count

      describe "As a user, " do
         describe "When I visit /songs, " do
            it "I see each song's title and play count" do
               carly = Artist.create!(name: "Carly Rae Jepsen")
               song_1 = Song.create!(title:       "I Really Like You",
                           length:      208,
                           play_count:  243810867, 
                           artist: carly)
               song_2 = Song.create!(title: "Call Me Maybe",
                                    length:      199,
                                    play_count:  1214722172, 
                                    artist_id: carly.id)

               visit "/songs"
               expect(page).to have_content(song_1.title)
               expect(page).to have_content("Play count: #{song_1.play_count}")
               expect(page).to have_content(song_2.title)
               expect(page).to have_content("Play count: #{song_2.play_count}")
            end
         end
      end
   end

   describe "Practice Story 1" do
      #  As a user
      # When I visit a Song show page
      # Then I see the song's title, length, and play count
      describe "As a user" do
         describe "When I visit a song show page" do
            it "Then I see the song's title, length, and play count" do

               carly = Artist.create!(name: "Carly Rae Jepsen")
               song_1 = Song.create!(title:       "I Really Like You",
                           length:      208,
                           play_count:  243810867, 
                           artist: carly)
               song_2 = Song.create!(title: "Call Me Maybe",
                                    length:      199,
                                    play_count:  1214722172, 
                                    artist_id: carly.id)

               visit "/songs/#{song_1.id}"

               expect(page).to have_content(song_1.title)
               expect(page).to_not have_content(song_2.title)
               expect(page).to have_content("Length: #{song_1.length}")
               expect(page).to_not have_content("Length: #{song_2.length}")
               expect(page).to have_content("Play count: #{song_1.play_count}")
               expect(page).to_not have_content("Play count: #{song_2.play_count}")
            end
         end
      end
   end


   describe "Practice User Story 2" do
      # As a user
      # When I visit a Song show page
      # I see a link back to the songs index page
      # When I click this link
      # Then I am taken to the songs index
      describe "As a user" do
         describe "When I visit a Song show page" do
            it "I see a link back to the songs index page" do
               carly = Artist.create!(name: "Carly Rae Jepsen")
               song_1 = Song.create!(title:       "I Really Like You",
                           length:      208,
                           play_count:  243810867, 
                           artist: carly)
               song_2 = Song.create!(title: "Call Me Maybe",
                                    length:      199,
                                    play_count:  1214722172, 
                                    artist_id: carly.id)

               visit "/songs/#{song_1.id}"

               expect(page).to have_link("Go to Songs Index")

            end


            it "When I click this link, I am taken to the songs index page" do
               carly = Artist.create!(name: "Carly Rae Jepsen")
               song_1 = Song.create!(title:       "I Really Like You",
                           length:      208,
                           play_count:  243810867, 
                           artist: carly)
               song_2 = Song.create!(title: "Call Me Maybe",
                                    length:      199,
                                    play_count:  1214722172, 
                                    artist_id: carly.id)

               visit "/songs/#{song_1.id}"
               click_link "Go to Songs Index"
               expect(current_path).to eq("/songs")
            end
         end
      end

   end


   describe "Practice User Story 3" do
      
      # As a user
      # When I visit an Artist's show page
      # Then I see the Artist's name
      # And I see the Artist's average song lenth
      # And I see the Artist's total song count

      describe "As a user" do
         describe "When I visit an Artist's show page" do
            it "Then I see the Artist's name, the artists' average song length, and the artist's total song count" do
               ## Note: this User Story requires a few Model tests as well! Check the spec/models/artist_spec.rb, and the corresponding Artist model, to see what I mean. 
               carly = Artist.create!(name: "Carly Rae Jepsen")
               song_1 = Song.create!(title:       "I Really Like You",
                           length:      208,
                           play_count:  243810867, 
                           artist: carly)
               song_2 = Song.create!(title: "Call Me Maybe",
                                    length:      199,
                                    play_count:  1214722172, 
                                    artist_id: carly.id)
               
               visit "/artists/#{carly.id}"

               expect(page).to have_content(carly.name)
               expect(page).to have_content("Average song length: #{carly.average_song_length}")
               expect(page).to have_content("Total song count: #{carly.total_song_count}")
               
            end
         end
      end


   end


end