require 'rails_helper'
require 'date'

RSpec.describe Book, type: :model do
  let(:author) { FactoryBot.create(:author) }
  let(:book) { FactoryBot.create(:book, author: author) }
  
  it "is valid with valid attributes" do
    expect(book).to be_valid
  end

  it "should have an author" do
    expect(book.author).to be_valid
  end

  it "should have a plausible year" do
    expect(book.year).to be <= Date.today.year
  end
end


