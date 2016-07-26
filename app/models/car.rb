class Car < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_cars
  has_many :categories, through: :category_cars
  has_many :carted_products
  

  def sale_message
    if price.to_f < 2000
      message = "Discount item!"
    else
      message = "On sale!"
    end
    message
  end

  def tax
    price.to_f * 0.09
  end

end
