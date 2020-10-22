# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
4.times do |i|
Store.create(name: Faker::Company.name, description: Faker::Restaurant.description, url: Faker::Internet.url, status: Faker::Subscription.status, code: Faker::IDNumber.valid, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, country: Faker::Address.country)
end

4.times do |i|
Department.create(store_id: @store_id, name: Faker::Company.name, description: Faker::Restaurant.description, code: Faker::IDNumber.valid, store: @store_id)
end

4.times do |i|
Employee.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Company.buzzword, role: Faker::Job.title, status: Faker::Subscription.status, department: @department_id)
end

4.times do |i|
Review.create(note: Faker::ChuckNorris.fact, store: @store_id)
end