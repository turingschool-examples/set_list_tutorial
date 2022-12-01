# ActiveRecord Associations Practice

This branch includes practice exercises for ActiveRecord associations. Work on the exercises in this order:


1. `spec/models/artist_spec.rb`
1. `spec/models/song_spec.rb`
1. `spec/models/record_label_spec.rb`

Start by running one test at a time. For the first test, you should run `bundle exec rspec spec/models/song_spec.rb:15`. Including the line number of the test will help you stay focused on one exercise at a time.

Avoid running all the tests at once (`bundle exec rspec`). This will error out since the `RecordLabel` class hasn't been created yet.

Make sure to read the comments in each test. They include instructions on how you should approach the problem.
