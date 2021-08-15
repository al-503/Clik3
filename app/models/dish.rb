class Dish < ApplicationRecord
  has_many_attached :photo

  belong_to :restaurant_dishe
end
