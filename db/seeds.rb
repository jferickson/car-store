# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
car = Car.new({name: "Porshe", price: "$90,000", image: "http://i54.photobucket.com/albums/g106/tim67bags/porshe.jpg", description: "great condition!"})
car.save