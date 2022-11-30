require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "relationships" do
     it { should belong_to :artist }
  end
end
