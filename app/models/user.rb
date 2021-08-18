class User < ApplicationRecord
  has_one_attached :photo
  
  has_many :orders

  has_many :restaurants, through: :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
