require "rails_helper"

# As a visitor
# When I visit the artists index
# And click 'Edit' next to an artist
# Then I am taken to an edit artist form
# When I enter a new name for the artist
# And click a button to 'Update Artist'
# Then I am redirected back to the artists index
# And I see the updated name

RSpec.describe "Edit Artist" do
   describe "As a visitor" do
      before :each do
         @artist = Artist.create!(name: "Bon Jovi")
         @artist2 = Artist.create!(name: "Coldplay")
      end
      it "When I visit the artists index I see an Edit link next to each artist" do
         visit "/artists"
         expect(page).to have_content("Bon Jovi")
         expect(page).to have_link("Edit Bon Jovi")
         expect(page).to have_content("Coldplay")
         expect(page).to have_link("Coldplay")
      end

      it "When I click 'Edit' I am taken to an edit artist form" do
         visit "/artists"
         click_link "Edit Bon Jovi"

         expect(current_path).to eq("/artists/#{@artist.id}/edit")
         expect(page).to have_content("Edit Bon Jovi")
         expect(page).to have_button("Update Bon Jovi")
      end

      describe "Edit Artist Form" do
         it "When I enter a new name and click a button to 'Update Artist' I am redirected back tot he artists index, where I see the updated name" do
            visit "/artists"
            click_link "Edit Bon Jovi"
            fill_in "Name", with: "Jon Bon Jovi!"
            expect(page).to have_button("Update Bon Jovi")
            click_button "Update Bon Jovi"

            expect(current_path).to eq("/artists")
            expect(page).to have_content("Jon Bon Jovi!")
         end
      end
   end

end