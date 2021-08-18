class Restaurant < ApplicationRecord
  has_many_attached :photos

  has_many :orders
  has_many :dishes

  has_many :users, through: :orders
end
