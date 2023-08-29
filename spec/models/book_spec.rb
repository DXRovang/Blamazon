require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with valid attributes" do
    author = create(:author)  # Assuming you're using FactoryBot for test data
    book = build(:book, author: author)
    expect(book).to be_valid
  end
end


# author = Author.create(first_name: 'Henry')