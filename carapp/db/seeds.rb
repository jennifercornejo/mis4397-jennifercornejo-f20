# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
#Dealerships
require 'faker'
4.times do |i|
Dealership.create(name: "#{Faker::Company.name} AutoSales", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, owner: Faker::Name.name)
end

#Salesmen
10.times do |i|
Salesman.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email)
end

#Cars
200.times do |i|
Car.create(model: Faker::Vehicle.make_and_model, year: Faker::Vehicle.year, condition: Faker::Subscription.status, location_address: Faker::Address.street_address, location_city: Faker::Address.city, location_state: Faker::Address.state, location_zip: Faker::Address.zip, price: Faker::Commerce.price, status: Faker::Subscription.status, sold_by: Faker::Name.name)
end

#Prospects
100.times do |i|
Prospect.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, mobile_phone_number: Faker::PhoneNumber.cell_phone)
end

#Cars.create(model: Faker::Vehicle.make_and_model, year: Faker::Vehicle.year, condition: Faker::Subscription.status, location_address: Faker::Address.street_address, location_city: Faker::Address.city, location_state: Faker::Address.state, location_zip: Faker::Address.zip, price: Faker::Commerce.price, status: Faker::Subscription.status , sold_by: Faker::Name.name)