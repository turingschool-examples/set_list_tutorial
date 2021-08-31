require 'rails_helper'

RSpec.describe "the Playlist index page" do
  it "should display all playlists" do
    talking_heads = Artist.create!(name: "Talking Heads")
    jgb = Artist.create!(name: "Jerry Garcia Band")
    prince = Artist.create!(name: "Prince")

    place = talking_heads.songs.create!(title: "This Must Be The Place", length: 832, play_count: 83209)
    breadbox = jgb.songs.create!(title: "Aint No Bread in the Breadbox", length: 832, play_count: 83209)
    r_and_c = jgb.songs.create!(title: "Reuben and Cherise", length: 832, play_count: 83209)

    # Creates a playlist
    uplifting_sound = Playlist.create!(name: "Uplifting Sound")
    jams = Playlist.create!(name: "Jerry Jams")

    # Creates playlist and associates it with a song. Under the hood, creates a row in the playlist_songs table
    rock = breadbox.playlists.create!(name: "Classic Rock")

    # Creates song and associates it with a playlist. Under the hood, creates a row in the playlist_songs table
    purple = uplifting_sound.songs.create!(title: "Purple Rain", length: 4378, play_count: 7453689, artist: prince)

    # Creates a row in the playlist_songs table. Associates a playlist with a song
    PlaylistSong.create!(song: purple, playlist: jams)
    PlaylistSong.create!(song: place, playlist: jams)

    # Creates a row in the playlist_songs table. Associates a playlist with a song
    rock.songs << place

    # Creates a row in the playlist_songs table. Associates a playlist with a song
    r_and_c.playlists << rock

    visit '/playlists'

    within("#playlist-#{rock.id}") do
      expect(page).to have_content(rock.name)
      expect(page).to have_content(place.title)
      expect(page).to have_content(breadbox.title)
      expect(page).to have_content(r_and_c.title)
    end

    within("#playlist-#{uplifting_sound.id}") do
      expect(page).to have_content(uplifting_sound.name)
      expect(page).to have_content(purple.title)
    end

    within("#playlist-#{jams.id}") do
      expect(page).to have_content(jams.name)
      expect(page).to have_content(purple.title)
      expect(page).to have_content(place.title)
    end
  end
end
