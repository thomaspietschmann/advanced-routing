# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database"
Restaurant.destroy_all
puts "db cleaned"

num_of_restaurants = 100

puts "Creating #{num_of_restaurants} restaurants"

num_of_restaurants.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5),
  )
  puts "Restaurant with id #{restaurant.id} created"
end

puts "restaurants created"

puts "done"
