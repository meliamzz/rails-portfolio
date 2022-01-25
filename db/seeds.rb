# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning db..."
User.destroy_all
Project.destroy_all
Contact.destroy_all

puts "db cleaned!"

puts "Creating user..."

User.create!(
  email: "melia.mazouzi@gmail.com",
  password: "secret"
)

puts "User created!"

puts "Creating project..."

Project.create!(
  name: "Planthy",
  language: "Ruby on Rails"
)

Project.create!(
  name: "Rez'event",
  language: "Ruby on Rails"
)

Project.create!(
  name: "Landing page",
  language: "HTML"
)

Project.create!(
  name: "To do list",
  language: "Ruby on Rails"
)

puts "Project created!"
