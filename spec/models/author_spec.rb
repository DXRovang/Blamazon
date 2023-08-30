require 'rails_helper'
require 'date'

RSpec.describe Author, type: :model do
  let(:author) { FactoryBot.create(:author) }

  it "is valid with valid attributes" do
    expect(author).to be_valid
  end

  it 'is not valid without a last name' do
    author.last_name = nil
    expect(author).to_not be_valid
  end

  it 'should have a plausible birth date' do
    expect(author.birth_date).to (be < Date.today).or be nil
  end
end
