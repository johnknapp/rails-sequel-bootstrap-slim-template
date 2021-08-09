# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create \
  email: "admin@gmail.com",
  password: "testpwd",
  password_confirmation: "testpwd"

10.times do
  Blog.create \
    title: Faker::Commerce.product_name,
    text: Faker::Lorem.sentence,
    category: rand(1..5)
end