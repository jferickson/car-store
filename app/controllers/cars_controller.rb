class CarsController < ApplicationController
  def toyota_information
    @car = Car.first
    render 'view_toyota.html.erb'
  end

  def mazda_information
    @car = Car.second
    render 'view_mazda.html.erb'
  end

  def honda_information
    @car = Car.third
    render 'view_honda.html.erb'
  end

  def porshe_information
    @car = Car.last
    render 'view_porshe.html.erb'
  end

  def all_cars_information
    @cars = Car.all
    render 'view_all_cars.html.erb'
  end
end
