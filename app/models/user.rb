class User < ApplicationRecord
  has_many :reviews
  has_many :orders
  has_many :user_watched_books
  has_many :watched_books, through: :user_watched_books, source: :book

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
