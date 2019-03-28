require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.delete_all if Rails.env.development?

10.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end


puts "You've added #{Restaurant.count} restaurants to the db"
