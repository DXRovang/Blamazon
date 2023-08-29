class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :user_watched_books
  has_many :watched_by_users, through: :user_watched_books, source: :user
end
