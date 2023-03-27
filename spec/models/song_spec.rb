require 'rails_helper'

RSpec.describe Song, type: :model do
  it {should belong_to :artist}

  # HOMEWORK SETUP INSTRUCTIONS
  # First, make sure your bundle & database are up to date
    # bundle install
    # rails db:{drop,create,migrate,seed}

  # Your task is to write AR queries and set them to the `query` variable in each test. When you run each test, your query should make the test pass. 

  describe "class methods" do
    before :each do 
      test_data # This method just loads test data from spec_helper; it is the same as the seeds data. Do not change the values of the objects to make your tests pass! 
    end


    it "Get all songs" do
      query = #write your query here!
      
      expect(query.sort).to eq([@purple_rain, @beret, @legend, @talk, @twenty_six, @vagabond, @bury_a_friend, @bad_guy, @someone_great, @change].sort)
    end

    it "Get the lengths of all songs" do
      query = #write your query here!

      expect(query).to eq([845, 665, 2301, 2301, 940, 240, 340, 240, 500, 640])
    end

    it "Get the songs with a play count greater than 0" do
      query = #write your query here!

      expect(query.sort).to eq([@purple_rain, @beret, @legend, @talk, @twenty_six, @vagabond, @bury_a_friend, @bad_guy, @someone_great, @change].sort)    
    end

    it "Get the titles of the songs with a play count greater than zero, sorted alphabetically" do
      query = # write your query here!

      expect(query.sort).to eq(["26", "I Can Change", "Legend Has It", "Purple Rain", "Raspberry Beret", "Someone Great", "Talk to Me", "Vagabond", "bad guy", "bury a friend"])
    end

    it "Get the length of the song with the most plays" do
      query = # write your query here!
      
      expect(query).to eq(2301)
    end
  end
end
