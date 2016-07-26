class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_products
  has_many :cars, through: :carted_products

  def calc_subtotal
    carted_products = CartedProduct.where(user_id: user_id, status: "carted")
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.car.price
    end
    subtotal
  end

  def calc_tax
    calc_subtotal * 0.09
  end

  def calc_total
    calc_subtotal + calc_tax
  end

  def status_to_purchased
    products = CartedProduct.where(user_id: user_id, status: "carted")
    products.each do |product|
    product.status = "purchased"
    product.save
  end
  end
end
