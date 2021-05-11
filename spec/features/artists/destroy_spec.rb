# As a visitor
# When I visit the artists index page
# And click a button 'Delete' next to an artist
# Then I am redirected back to the artists index page
# And I no longer see that artist

require 'rails_helper'

RSpec.describe 'destroying an artist' do
  it 'can delete the artist from the index page' do
    artist = Artist.create(name: 'Prince')

    visit '/artists'

    click_button 'Delete'

    expect(current_path).to eq('/artists')
    expect(page).to_not have_content('Prince')
  end
end
