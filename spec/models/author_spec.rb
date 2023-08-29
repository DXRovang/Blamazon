require 'rails_helper'

RSpec.describe Author, type: :model do
  it "is valid with valid attributes" do
    author = create(:author) 
    expect(author).to be_valid
  end
end
