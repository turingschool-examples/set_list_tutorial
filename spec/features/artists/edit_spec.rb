# As a visitor
# When I visit the artists index
# And click 'Edit' next to an artist
# Then I am taken to an edit artist form
# When I enter a new name for the artist
# And click a button to 'Update Artist'
# Then I am redirected back to the artists index
# And I see the updated name

require 'rails_helper'

RSpec.describe 'the artist edit' do
  it 'links to the edit page' do
    artist = Artist.create!(name: 'Prince')

    visit artists_path

    click_button "Edit #{artist.name}"

    expect(current_path).to eq("/artists/#{artist.id}/edit")
  end

  it 'can edit the artist' do
    artist = Artist.create!(name: 'Princ')

    visit artists_path

    expect(page).to have_content('Princ')

    click_button 'Edit Princ'

    fill_in 'Name', with: 'Prince'
    click_button 'Update Artist'

    expect(current_path).to eq("/artists")
    expect(page).to have_content('Prince')
  end
end
