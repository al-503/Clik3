class Dish < ApplicationRecord
  has_one_attached :photo

  belongs_to :restaurant

  has_many :orders, through: :restaurants
end
