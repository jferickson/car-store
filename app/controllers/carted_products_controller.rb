class CartedProductsController < ApplicationController
  
  def create
    @carted_product = CartedProduct.new(
    quantity: params['quantity'],
    user_id: current_user.id,
    car_id: params[:car_id],
    status: "carted"
    #order_id: params[:order_id]
    #subtotal: Car.find_by(id: params['product_id']).price * params['quantity'].to_i
    )
    @carted_product.save
    flash[:success] = "Product added to cart"
    #render 'show.html.erb'
    redirect_to '/carted_products'
  end

  def destroy
    products = CartedProduct.where(car_id: params[:car_id])
    #product.status_to_removed
    products.each do |product|
       product.status = "removed"
       product.save
    end 
    redirect_to '/carted_products'
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render 'index.html.erb'
  end
end
