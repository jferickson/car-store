class CarsController < ApplicationController
  
  def index
    @cars = Car.all
    tier_attribute = params[:tier]
    if tier_attribute == "discount"
      @cars = Car.where("price < ?", 30000)
    elsif
      sort_attribute = params[:sort]
      @cars = Car.order(sort_attribute)
    elsif params[:category]
      @cars = Category.find_by(name: params[:category]).cars
    end
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create

    car = Car.new(
      name: params['name'],
      price: params['price'],
      image: params['image'],
      description: params['description']
      )
    car.save
    flash[:success] = "success car created!"
    redirect_to "/cars/#{car.id}"
  end

  def show
    @car = Car.find_by(id: params['id'])
    render 'show.html.erb'
  end
 
  def edit
    @car = Car.find_by(id: params['id'])
    render 'edit.html.erb'
  end

  def update
   @car = Car.find_by(id: params['id'])
    @car.update(
      name: params['name'],
      price: params['price'],
      image: params['image'],
      description: params['description']
    )
    flash[:success] = "success car updated!"
    redirect_to "/cars/#{@car.id}"
  end

   def destroy
     @car = Car.find_by(id: params[:id])
     @car.destroy
     redirect_to "/cars"
   end
  
end
