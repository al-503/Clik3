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

crocodillo = Restaurant.create!(full_name: "il Crocodillo", speciality: "Italian", adress:"4 rue du général Guillaudot, Rennes", phone_number:"0615784952")
file = File.open("db/fixtures/images_restaurant/italien.jpg")
crocodillo.photo.attach(io: file, filename: "italien.jpg", content_type: 'image/png')
crocodillo.save!

el_caliente = Restaurant.create!(full_name: "el Caliente", speciality: "Mexican", adress:" 25 Boulevard de Metz 35, 35700 Rennes", phone_number:"0645478952")
file = File.open("db/fixtures/images_restaurant/mexicain.jpg")
crocodillo.photo.attach(io: file, filename: "mexicain.jpg", content_type: 'image/png')
el_caliente.save!

user1 = User.create!(first_name: "Marceline", last_name: "Dupont", email: "test@test.fr", password:"123456")
file = File.open("db/fixtures/images_profil/image.jpeg")
user1.photo.attach(io: file, filename: "image.jpeg", content_type: 'image/png')
user1.save!

user2 = User.create!(first_name: "Mathieu", last_name: "Durand", email: "mathieu@test.fr", password:"123456")
file = File.open("db/fixtures/images_profil/image1.jpeg")
user2.photo.attach(io: file, filename: "image1.jpeg", content_type: 'image/png')
user2.save!
