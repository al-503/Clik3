require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
User.destroy_all
Dish.destroy_all

# Users #
user1 = User.create!(first_name: "Marceline", last_name: "Dupont", email: "test@test.fr", password:"123456")
file = File.open("db/fixtures/images_profil/image.jpeg")
user1.photo.attach(io: file, filename: "image.jpeg", content_type: 'image/png')
user1.save!

user2 = User.create!(first_name: "Mathieu", last_name: "Durand", email: "mathieu@test.fr", password:"123456")
file = File.open("db/fixtures/images_profil/image1.jpeg")
user2.photo.attach(io: file, filename: "image1.jpeg", content_type: 'image/png')
user2.save!


# Restaurants #
crocodillo = Restaurant.create!(full_name: "il Crocodillo", speciality: "Italian", adress:"4 rue du général Guillaudot, Rennes", phone_number:"0615784952")
file = File.open("db/fixtures/images_restaurant/italien.jpg")
crocodillo.photos.attach(io: file, filename: "italien.jpg", content_type: 'image/png')
crocodillo.save!

el_caliente = Restaurant.create!(full_name: "el Caliente", speciality: "Mexican", adress:" 25 Boulevard de Metz 35, 35700 Rennes", phone_number:"0645478952")
file = File.open("db/fixtures/images_restaurant/mexicain.jpg")
crocodillo.photos.attach(io: file, filename: "mexicain.jpg", content_type: 'image/png')
el_caliente.save!

# dishes caliente #
#natchos = Dish.create!(name: "Natcho", price: 9, preptime: 8, description:"avocado, tomate, epices, creme, natchos")
#file = File.open("db/fixtures/images_dish/natchos.jpg")
#natchos.photo.attach(io: file, filename: "natchos.jpg", content_type: 'image/png')
#natchos.save!

#burritos = Dish.create!(name: "Burrito", price: 9, preptime: 8, description:"muy caliente")
#file = File.open("db/fixtures/images_dish/burritos.jpg")
#burritos.photo.attach(io: file, filename: "burritos.jpg", content_type: 'image/png')
#burritos.save!


# dishes crocodillo #
#napolitaine = Dish.create!(name: "Napolitaine", price: 9, preptime: 15, description:"tomate, olive, mozzarella")
#file = File.open("db/fixtures/images_dish/napolitaine.jpg")
#napolitaine.photo.attach(io: file, filename: "napolitaine.jpg", content_type: 'image/png')
#napolitaine.save!

#peperonie = Dish.create!(name: "Peperonie", price: 10, preptime: 15, description:"tomate, olive, mozzarella, peperonie")
#file = File.open("db/fixtures/images_dish/peperonie.jpg")
#peperonie.photo.attach(io: file, filename: "peperonie.jpg", content_type: 'image/png')
#peperonie.save!
