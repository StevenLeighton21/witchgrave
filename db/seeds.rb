# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Steven",
             email: "steven.leighton21@gmail.com",
             password:              "frostgr@ve",
             password_confirmation: "frostgr@ve",
             admin: true)

2.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)

users = User.order(:created_at).take(1)
  2.times do |n|
   content = Faker::Lorem.sentence(5)
    users.each { |user| user.campaigns.create!(name: "campaigns #{n+1}", description: content) }
  end
end