require 'rails_helper'

RSpec.describe Song, type: :model do
  it {should belong_to :artist}
end
