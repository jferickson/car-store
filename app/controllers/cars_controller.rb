class CarsController < ApplicationController
  
  def index
    @cars = Car.all
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
    render 'create.html.erb'
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
    render 'update.html.erb'
  end

   def destroy
     @car = Car.find_by(id: params[:id])
     @car.destroy
     render 'destroy.html.erb'
   end
  
end
