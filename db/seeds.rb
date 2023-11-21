# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
puts 'destroying users'
Bike.destroy_all
puts 'destroying bikes'

user = User.new(email: 'bob@email.com', username: 'superbob', password: '123123', password_confirmation: '123123')
user.save!
puts 'creating bob'

bike = Bike.create!(name: 'turbo', category: 'road', price_per_day: 16.50, avg_rating: 3.5, size: 'adult', address: '123 hello street, London', description: 'This is a road bike, great for city riding', user_id: user.id)
puts "creating #{bike.name}"
bike = Bike.create!(name: 'cruise', category: 'city', price_per_day: 10.50, avg_rating: 4, size: 'adult', address: '123 baker street, Brussels', description: 'This is a city bike, great for visiting city with comfort', user_id: user.id)
puts "creating #{bike.name}"
bike = Bike.create!(name: 'cinderella', category: 'city', price_per_day: 7, avg_rating: 3, size: 'kid', address: '123 gustavo vicuna, Santiago', description: 'This is a kid bike for 6 to 9 years old', user_id: user.id)
puts "creating #{bike.name}"
