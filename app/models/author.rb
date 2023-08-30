class Author < ApplicationRecord
  has_many :books
  
  validates :last_name, presence: true
  def determine_alive
    self.alive = death_date.nil? || death_date >= Date.today
  end

  before_save :determine_alive
end
