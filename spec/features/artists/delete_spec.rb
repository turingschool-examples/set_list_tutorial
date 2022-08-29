require "rails_helper"

RSpec.describe "Deleting an Artist" do
   describe "As a visitor" do
      describe "When I visit the artists index page" do
         describe "And click a button 'Delete' next to an artist" do
            before :each do 
               @artist = Artist.create!(name: "Bon Jovi")
               visit "/artists"
            end
            it "It deletes the artist" do
               expect(page).to have_content("Bon Jovi")
               expect(page).to have_button("Delete Bon Jovi")
            end

            it "Then I am redirected back to the artists index page" do
               click_button "Delete Bon Jovi"
               expect(current_path).to eq("/artists")
            end   

            it "And I no longer see that artist" do
               click_button "Delete Bon Jovi"
               expect(page).to_not have_content("Bon Jovi")
               expect(page).to_not have_button("Delete Bon Jovi")
            end
         end
      end
   end


end