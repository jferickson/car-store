class Car < ActiveRecord::Base
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
