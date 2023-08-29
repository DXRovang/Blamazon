class OrdersController < ApplicationController
  has_many :order_items
  has_many :books, through: :order_items
end
