def load_test_data
    @prince = Artist.create!(name: 'Prince')
    @rtj = Artist.create!(name: 'Run The Jewels')
    @caamp = Artist.create!(name: 'Caamp')
    @jgb = Artist.create!(name: 'Jerry Garcia Band')
    @billie = Artist.create!(name: 'Billie Eilish')
    @lcd = Artist.create!(name: 'LCD Soundsystem')

    @purple_rain = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
    @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 665, play_count: 99)

    @legend = @rtj.songs.create!(title: 'Legend Has It', length: 2301, play_count: 2_300_000)
    @talk = @rtj.songs.create!(title: 'Talk to Me', length: 2301, play_count: 2_300_000)

    @twenty_six = @caamp.songs.create!(title: '26', length: 940, play_count: 150_000)
    @vagabond = @caamp.songs.create!(title: 'Vagabond', length: 240, play_count: 120_000)

    @bury_a_friend = @billie.songs.create!(title: 'bury a friend', length: 340, play_count: 1_200_000)
    @bad_guy = @billie.songs.create!(title: 'bad guy', length: 240, play_count: 100_000)

    @someone_great = @lcd.songs.create!(title: 'Someone Great', length: 500, play_count: 1_000_000)
    @change = @lcd.songs.create!(title: 'I Can Change', length: 640, play_count: 100_000)

    @summer_rewind = Playlist.create!(name: 'summer rewind', created_at: '01/11/2020')
    @workout = Playlist.create!(name: 'workout', created_at: '09/30/2023')
    @chill_evening = Playlist.create!(name: 'chill evening', created_at: '01/01/1999')

    PlaylistSong.create!(playlist: @summer_rewind, song: @beret)
    PlaylistSong.create!(playlist: @summer_rewind, song: @bad_guy)

    PlaylistSong.create!(playlist: @chill_evening, song: @purple_rain)
    PlaylistSong.create!(playlist: @chill_evening, song: @change)
    PlaylistSong.create!(playlist: @chill_evening, song: @talk)
    
    PlaylistSong.create!(playlist: @workout, song: @vagabond)
    PlaylistSong.create!(playlist: @workout, song: @purple_rain)

  end