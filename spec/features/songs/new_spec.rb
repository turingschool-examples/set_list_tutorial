require "rails_helper"

RSpec.describe "New song form", type: :feature do
   
   describe "As a user" do
      describe "When I visit '/songs/new'" do
         it "I see a form with fields for title, length, play_count, and artist_id" do
            visit new_song_path
            expect(page).to have_field "Song title"
            expect(page).to have_field "song[length]"
            expect(page).to have_field "song[play_count]"
         end

         it "When I fill out the form and click 'Create Song' I am taken to the Songs index where I see my new Song" do
            pink = Artist.create!(name: "Pink")
            visit new_song_path

            fill_in "song[title]", with: "Try"
            fill_in "song[length]", with: 950
            fill_in "song[play_count]", with: 469610162
            fill_in "song[artist_id]", with: pink.id

            click_button "Create Song"

            expect(current_path).to eq("/songs")
            expect(page).to have_content("Try")
         end
      end
   end


end