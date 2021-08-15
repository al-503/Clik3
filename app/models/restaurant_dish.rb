class RestaurantDish < ApplicationRecord
  has_many_attached :photo

  belongs_to :restaurant
  belongs_to :dish
end
