require "rails_helper"

RSpec.describe "Edit a song", type: :feature do

   describe "As a user" do
      describe "When I visit a song edit form ('/songs/:id/edit')" do
         it "I see a form to edit a song" do
            pink = Artist.create!(name: "Pink")
            song = pink.songs.create!(title: "Try", length: 950, play_count: 469610162)

            visit edit_song_path(song) 

            expect(page).to have_field "Song title" 
            expect(page).to have_field "song[length]"
            expect(page).to have_field "song[play_count]"
         end

         it "When I fill out this form and click Update Song, I am redirected to the Songs index page where the exising song's data is updated" do

            pink = Artist.create!(name: "Pink")
            song = pink.songs.create!(title: "Try", length: 950, play_count: 469610162)

            visit edit_song_path(song)

            fill_in "Song title", with: "Try 2"
            fill_in "song[length]", with: 951
            fill_in "song[play_count]", with: 470000000

            click_button "Update Song" 

            expect(current_path).to eq("/songs")
            expect(page).to have_content "Try 2"
            expect(page).to have_content "Length: 951"
         end
      end
   end

end