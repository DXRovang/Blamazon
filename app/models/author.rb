class Author < ApplicationRecord
  def determine_alive
    self.alive = death_date.nil? || death_date >= Date.today
  end

  before_save :determine_alive
end
