class OrdersController < ApplicationController
  def create

    @order = Order.new(
    quantity: params['quantity'],
    user_id: current_user.id,
    product_id: params['product_id'],
    subtotal: Car.find_by(id: params['product_id']).price * params['quantity'].to_i
    )
    @order.save
    render 'show.html.erb'
  end
end
