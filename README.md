# Joins Homework


## 1. Songs 
Let's write some ActiveRecord queries! 

First, make sure your bundle & database are up to date. 
```
bundle install
rails db:{drop,create,migrate,seed}
```

Then, navigate to `spec/models/song_spec.rb`. Your task is to write AR queries and set them to the `query` variable set up for you in each test. When you run each test, your query should make the test pass. 


## 2. Playlists

Next, let's try a Join! You may struggle with this at first, but that is ok. We'll go over this example in class. 

Navigate to `spec/models/playlist_spec.rb`. Same as above - your task is to write a query (SQL or AR, or both for practice) that returns the names of all Artists from the Summer Rewind Playlist, using a `.joins` query.  

The data you'll need to reference is in the `spec_helper.rb` file under the `test_data` method. 

# Solutions

Run these queries locally, and check your work against the [`joins_homework_solutions` branch](https://github.com/turingschool-examples/set_list_tutorial/blob/joins_homework_solutions/spec/models/song_spec.rb) in a browser window. 
