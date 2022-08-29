require "rails_helper"

# As a visitor
# When I visit the artists index
# And click on 'New Artist'
# Then my current path is '/artists/new'
# and I fill in the artist's name
# Then I click 'Create Artist'
# I am redirected to the artist index page

RSpec.describe "Creating a New Artist" do
   describe "As a visitor" do
      describe 'When I visit the new artist form by clicking a link on the index' do
         it "I can create a new artist" do
            #visit the artists index
            visit "/artists" 
            expect(current_path).to eq("/artists")

            click_link 'New Artist'

            expect(current_path).to eq("/artists/new")
            expect(page).to have_content("New Artist")

            # fill out the form
            fill_in "Name", with: "DJ Khaled"
            click_button "Create Artist"

            # I am redirected to the artist index page
            expect(current_path).to eq("/artists")
            expect(page).to have_content("DJ Khaled")
            
         end
      end
   end
end