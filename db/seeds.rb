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
  language: "Ruby on Rails",
  img_folder: "planthy",
  description: "Une application de location de plantes pour vos événements",
  feature1: "Liste des plantes disponibles et localisation sur une map",
  feature2: "Calendrier de réservation",
  feature3: "Dashboard prévu pour le loueur de plantes, lui permettant de voir les reservations à valider et celles qui ont été acceptées"
)

Project.create!(
  name: "Rez'event",
  language: "Ruby on Rails",
  img_folder: "rezevent",
  description: "Une application de gestion des événements pour la ville de Rezé (44)",
  feature1: "Panneau d'admin permettant la validation ou le refus des événements soumis",
  feature2: "Affiche des infos de chaque événement avec localisation de ce dernier sur une map",
  feature3: "Possibilité d'indiquer sa participation à un événement"
)

Project.create!(
  name: "Landing page",
  language: "HTML",
  img_folder: "landing",
  description: "Présentation d'une page d'accueil statique de vente de fleurs",
  feature1: "Bannière avec titre et un bouton permettant d'accéder à la liste des fleurs",
  feature2: "Descriptif de l'application"
)

Project.create!(
  name: "To do list",
  language: "Ruby on Rails",
  img_folder: "todolist",
  description: "Une application qui permet de vous souvenir de ce que vous avez à faire",
  feature1: "Possibilité de créer un nombre infini de listes",
  feature2: "D'un simple clic, les tâches réalisées sont marquée comme faites!"
)

puts "Project created!"
