# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

3.times do
  Place.create!(
    name: Faker::Company.name,
    street: Faker::Address.street_name,
    city: Faker::Address.city,
    country: Faker::Address.country,
    avg_price: '5.0',
    description: 'Restaurant'

  )
end

3.times do
  Review.create(text: Faker::Lorem.words(30), grade: rand(1..6), place_id: 1, user_id: 1)
end
