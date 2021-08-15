class Restaurant < ApplicationRecord
  has_many_attached :photo

  has_many :order
  has_many :restaurant_dish
end
