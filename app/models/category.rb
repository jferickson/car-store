class Category < ActiveRecord::Base
  has_many :category_cars
  has_many :cars, through: :category_cars
end
