# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

Faker::Config.locale = 'fr-CA'

10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.phone_number_with_country_code
  category = %w[chinese italian japanese french belgian].sample
  restaurant = Restaurant.new({name: name, address: address, phone_number: phone_number, category: category})
  restaurant.save!
end
