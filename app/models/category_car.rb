class CategoryCar < ActiveRecord::Base
  belongs_to :category
  belongs_to :car
end
