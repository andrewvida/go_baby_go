# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

parent = Parent.create(name: "Andrew Vida",
  email: "andrew_vida@yahoo.com",
  password: "P@ssword",
  password_confirmation: "P@ssword")

2.times do |i|
  Kid.create(name: Faker::Name.name,
    birthdate: "2013-09-0#{i+2}",
    birthplace: "Columbus, OH",
    weight: rand(1..12).to_s,
    height: rand(15..21).to_s,
    parent_id: parent.id)
end
