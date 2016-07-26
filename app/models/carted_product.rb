class CartedProduct < ActiveRecord::Base
  #has_many :users
  #has_many :orders, through: :users
  #belongs_to :car
  belongs_to :car
  belongs_to :user

  # def status_to_removed
  #   products = CartedProduct.where(user_id: user_id, car_id: car_id)
  #   products.each do |product|
  #     product.status = "removed"
  #     product.save
  #   end
  # end
end
