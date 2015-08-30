# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

User.create!(email: 'admin@admin.com', password: 'adminadmin')

  Place.create!(
    name: '3kolory',
    street: 'Wiankowa 3',
    city: 'Poznań',
    country: 'PL',
    avg_price: '7.0',
    description: 'Cafe grill & restaurant'
  )
    Place.create!(
    name: 'Blue Marina',
    street: 'Chojnicka 49',
    city: 'Poznań',
    country: 'PL',
    avg_price: '20.0',
    description: 'Restaurant'
  )
    Place.create!(
    name: 'Naleśnikarnia Gramofon - Stary Rynek',
    street: 'Wrocławska 2',
    city: 'Poznań',
    country: 'PL',
    avg_price: '17.0',
    description: 'Restaurant'
  )
    Place.create!(
    name: 'Jugoslavia',
    street: 'Ratajczaka 18',
    city: 'Poznań',
    country: 'PL',
    avg_price: '12.0',
    description: 'Restaurant'
  )
    Place.create!(
    name: 'Zielona Weranda Cafe',
    street: 'Paderewskiego 7',
    city: 'Poznań',
    country: 'PL',
    avg_price: '35.0',
    description: 'Cafe grill & restaurant'
  )


for i in 1..5 do
  Review.create!(text: Faker::Lorem.sentence(10), grade: rand(1..6), place_id: i, user_id: 1)
end

5.times do
  Event.create!(
    title: Faker::Company.name,
    description: Faker::Lorem.sentence(10),
    date: Faker::Date.between(2.days.ago, Date.today),
    place_id: rand(1..5)
  )
end
