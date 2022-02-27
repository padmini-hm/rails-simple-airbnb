# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up the data base"
Flat.destroy_all
puts "Creating a new flats"

10.times do

  Flat.create(
    name: Faker::Address.city,
    address: Faker::Address.street_address,
    description: Faker::Quotes::Rajnikanth.joke,
    price_per_night: 75,
    number_of_guests: 3,
    rating: 4
  )
end
