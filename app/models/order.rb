class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  has_many :restaurant_dish, trough: :restaurant
  
end
