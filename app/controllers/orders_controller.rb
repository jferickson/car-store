class OrdersController < ApplicationController
  def create
    order = Order.new(
    user_id: current_user.id)

    order.subtotal = order.calc_subtotal
    order.tax = order.calc_tax
    order.total = order.calc_total
    order.save
    #order.status_to_purchased
    #flash[:success] = "Order successfully created"
    order.status_to_purchased
    redirect_to "/orders/#{order.id}"
  end

   def show
      @order = Order.find_by(id: params['id'])
     render 'show.html.erb'
   end
end
