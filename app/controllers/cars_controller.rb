class CarsController < ApplicationController
  
  def car_information
    @car = Car.find_by(id: params['id'])
    render 'view_car.html.erb'
  end
 
  def all_cars_information
    @cars = Car.all
    render 'view_all_cars.html.erb'
  end
end
