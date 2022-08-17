# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+3513857383", category: "italian"}

pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+3513857383", category: "italian"}

kefi_bistro = {name: "Kefi Bistro", address: "Calcada da estrela, Lisbon ", phone_number: "+351837597", category: "jappanese"}

crispy_mafya = {name: "crispy Mafya", address: "R. cecilio de Sousa, Lisbon ", phone_number: "+3518884694", category: "chinese"}

faz_frio = {name: "Faz Frio", address: "R. Dom Pedro, Lisbon ", phone_number: "+3519322466", category: "french"}

[dishoom, pizza_east, kefi_bistro, crispy_mafya, faz_frio].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
