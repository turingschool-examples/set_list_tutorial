require 'rails_helper'

RSpec.describe Artist do
  describe "relationships" do
    it { should have_many :songs }
  end
end
