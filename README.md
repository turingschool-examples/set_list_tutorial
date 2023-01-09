# SQL & AR Workshop

## Warm Up

Write a method that will return all Artists with Songs with at least 1,000,000 plays.

Use TDD to write this method. First decide which model you'd like to define the method in and whether it is a class or instance method.

Then start writing your test. Call the method defined in `spec/helper_methods.rb` to populate your test with data.

Once you have your test, start writing the method.

## Practice Problems

Each of these problems has tests created for you. You will need to define the method.

### Set 1 - As a Class

We will work on these problems in Breakout Rooms. Then we will come together and discuss as a class.

1. `spec/models/song_spec.rb:8` - Get a unique list of all Songs on all playlists. 
1. `spec/models/artist_spec.rb:38` - Get a unique list of all the Artists on all Playlists created after Jan 1, 2020. 
1. `spec/models/artist_spec.rb:23` - Get a list of all Playlist that have songs from a specific Artist ordered alphabetically by the Playlist name 

### Set 2 - Choose your own Adventure

Pick one of the following problems to work on. You will split in to groups to work on your chosen problem. Then we will review each problem as a class. They are listed from least to most difficult.

1. `spec/models/artist_spec.rb:44` - Get the 3 Artists with the highest total play_counts of all of their songs. This problem will require you to use joining, grouping, and aggregating.
1. `spec/models/playlist_spec.rb:10` - Get the Playlist with the longest total length. This problem will also require you to use joining, grouping, and aggregating. It may be slightly more challenging than the previous problem since it starts from the Playlist model which we haven't seen yet.
1. `spec/models/artist_spec.rb:54` - Get all Artists with Songs on 3 different Playlists. This problem is a step up in difficulty and may require you to use concepts that we haven't discussed in class.


