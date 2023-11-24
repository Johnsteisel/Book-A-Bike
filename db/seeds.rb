# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Bike.destroy_all
puts 'destroying bikes'
User.destroy_all
puts 'destroying users'

bob = User.new(email: 'bob@email.com', username: 'Bob', password: '123123', password_confirmation: '123123')
bob.save!
puts 'creating Bob'

ryan = User.new(email: 'ryan@email.com', username: 'Ryan', password: '123123', password_confirmation: '123123')
ryan.save!
puts 'creating Ryan'

sophie = User.new(email: 'sophie@email.com', username: 'Sophie', password: '123123', password_confirmation: '123123')
sophie.save!
puts 'creating Sophie'

anastasia = User.new(email: 'anastasia@email.com', username: 'Anastasia', password: '123123', password_confirmation: '123123')
anastasia.save!
puts 'creating Anastasia'

jack = User.new(email: 'jack@email.com', username: 'Jack', password: '123123', password_confirmation: '123123')
jack.save!
puts 'creating Jack'


turbo = Bike.new(name: 'Turbo', category: 'Road', price_per_day: 16.50, size: 'Adult', address: 'Place Du Petit Sablon - Kleine Zavel, 1000 Bruxelles, Région de Bruxelles-Capitale, Belgique', description: 'This is a road bike, great for city riding and visiting around', user_id: bob.id)
turbo.photos.attach(
  io: File.open('app/assets/images/turbo1.png'),
  filename: 'turbo1.png'
)
turbo.photos.attach(
  io: File.open('app/assets/images/turbo2.png'),
  filename: 'turbo2.png'
)
turbo.photos.attach(
  io: File.open('app/assets/images/turbo3.png'),
  filename: 'turbo3.png'
)
turbo.save!
puts "creating #{turbo.name}"

thunderbolt = Bike.new(name: 'Thunderbolt', category: 'Gravel', price_per_day: 18, size: 'Adult', address: 'Place Du Petit Sablon - Kleine Zavel, 1000 Bruxelles, Région de Bruxelles-Capitale, Belgique', description: 'This is a gravel bike, practical for cruising in the city as well as riding in some dirt trails', user_id: bob.id)
thunderbolt.photos.attach(
  io: File.open('app/assets/images/thunderbolt1.png'),
  filename: 'thunderbolt1.png'
)
thunderbolt.photos.attach(
  io: File.open('app/assets/images/thunderbolt2.png'),
  filename: 'thunderbolt2.png'
)
thunderbolt.photos.attach(
  io: File.open('app/assets/images/thunderbolt3.png'),
  filename: 'thunderbolt3.png'
)
thunderbolt.save!
puts "creating #{thunderbolt.name}"

blaze = Bike.new(name: 'Blaze Rider', category: 'Kids', price_per_day: 22, size: 'Kids', address: 'Place Du Petit Sablon - Kleine Zavel, 1000 Bruxelles, Région de Bruxelles-Capitale, Belgique', description: 'This road bike is ideal for kids between 3 and 6 years old, they will certainly enjoy the moment with it', user_id: bob.id)
blaze.photos.attach(
  io: File.open('app/assets/images/blaze1.png'),
  filename: 'blaze1.png'
)
blaze.photos.attach(
  io: File.open('app/assets/images/blaze2.png'),
  filename: 'blaze2.png'
)
blaze.save!
puts "creating #{blaze.name}"

solar = Bike.new(name: 'Solar cyclone', category: 'Mountain', price_per_day: 12, size: 'Kid', address: 'Grand-Place, 1000 Bruxelles, Région de Bruxelles-Capitale, Belgique', description: 'This is a kid bike for 6 to 9 years old, rides like a charm!', user_id: ryan.id)
solar.photos.attach(
  io: File.open('app/assets/images/solar.png'),
  filename: 'solar.png'
)
solar.save!
puts "creating #{solar.name}"

cyclone = Bike.new(name: 'Cyclone Fury', category: 'Racing', price_per_day: 32, size: 'Adult', address: 'Grand-Place, 1000 Bruxelles, Région de Bruxelles-Capitale, Belgique', description: 'Race bike for competitors in town! Enjoy the ride and hope you get lots of medals!', user_id: ryan.id)
cyclone.photos.attach(
  io: File.open('app/assets/images/cyclone1.png'),
  filename: 'cyclone1.png'
)
cyclone.photos.attach(
  io: File.open('app/assets/images/cyclone2.png'),
  filename: 'cyclone2.png'
)
cyclone.photos.attach(
  io: File.open('app/assets/images/cyclone3.png'),
  filename: 'cyclone3.png'
)
cyclone.save!
puts "creating #{cyclone.name}"

cosmic = Bike.new(name: 'Cosmic Cruiser', category: 'Road', price_per_day: 27, size: 'Adult', address: 'Grand-Place, 1000 Bruxelles, Région de Bruxelles-Capitale, Belgique', description: 'This is a kid bike for 6 to 9 years old, rides like a charm!', user_id: ryan.id)
cosmic.photos.attach(
  io: File.open('app/assets/images/cosmic.png'),
  filename: 'cosmic.png'
)

cosmic.save!
puts "creating #{cosmic.name}"

eclipse = Bike.new(name: 'Eclipse Explorer', category: 'Gravel', price_per_day: 16, size: 'Adult', address: 'Woluwe-Saint-Pierre, Région de Bruxelles-Capitale, Belgique', description: 'This gravel bike will make you enjoy cycling. You can use it on either traks or road, it will run super smoothly', user_id: sophie.id)
eclipse.photos.attach(
  io: File.open('app/assets/images/eclipse1.png'),
  filename: 'eclipse1.png'
)
eclipse.photos.attach(
  io: File.open('app/assets/images/eclipse2.png'),
  filename: 'eclipse2.png'
)
eclipse.photos.attach(
  io: File.open('app/assets/images/eclipse3.png'),
  filename: 'eclipse3.png'
)

eclipse.save!
puts "creating #{eclipse.name}"

titan = Bike.new(name: 'Titan Trekker', category: 'Mountain', price_per_day: 13, size: 'Kid', address: 'Woluwe-Saint-Pierre, Région de Bruxelles-Capitale, Belgique', description: 'Your kid will be flying on this bike. No more waiting every 200m. Ideal for 7 to 10 years old.', user_id: sophie.id)
titan.photos.attach(
  io: File.open('app/assets/images/titan.png'),
  filename: 'titan.png'
)
titan.save!
puts "creating #{titan.name}"

vortex = Bike.new(name: 'Vortex Velocity', category: 'Racing', price_per_day: 43, size: 'Adult', address: 'Woluwe-Saint-Pierre, Région de Bruxelles-Capitale, Belgique', description: 'This is a proper race bike. Great for competition if you do not have one!', user_id: sophie.id)
vortex.photos.attach(
  io: File.open('app/assets/images/vortex1.png'),
  filename: 'vortex1.png'
)
vortex.photos.attach(
  io: File.open('app/assets/images/vortex2.png'),
  filename: 'vortex2.png'
)
vortex.photos.attach(
  io: File.open('app/assets/images/vortex3.png'),
  filename: 'vortex3.png'
)
vortex.save!
puts "creating #{vortex.name}"

booking = Booking.create!(start_time: Date.new(2023, 10, 6.5), end_time: Date.new(2023, 10, 8.5), bike_id: turbo.id, user_id: bob.id, total_price: 33)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 9, 6.5), end_time: Date.new(2023, 9, 8.5), bike_id: turbo.id, user_id: ryan.id, total_price: 33)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 8, 6.5), end_time: Date.new(2023, 8, 8.5), bike_id: turbo.id, user_id: sophie.id, total_price: 33)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 7, 6.5), end_time: Date.new(2023, 7, 8.5), bike_id: turbo.id, user_id: anastasia.id, total_price: 33)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 6, 6.5), end_time: Date.new(2023, 6, 8.5), bike_id: turbo.id, user_id: jack.id, total_price: 33)
puts 'creating booking'


booking = Booking.create!(start_time: Date.new(2023, 9, 6.5), end_time: Date.new(2023, 9, 8.5), bike_id: thunderbolt.id, user_id: bob.id, total_price: 36)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 8, 6.5), end_time: Date.new(2023, 8, 8.5), bike_id: thunderbolt.id, user_id: ryan.id, total_price: 36)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 7, 6.5), end_time: Date.new(2023, 7, 8.5), bike_id: thunderbolt.id, user_id: sophie.id, total_price: 36)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 6, 6.5), end_time: Date.new(2023, 6, 8.5), bike_id: thunderbolt.id, user_id: anastasia.id, total_price: 36)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 5, 6.5), end_time: Date.new(2023, 5, 8.5), bike_id: thunderbolt.id, user_id: jack.id, total_price: 36)
puts 'creating booking'


booking = Booking.create!(start_time: Date.new(2023, 8, 6.5), end_time: Date.new(2023, 8, 8.5), bike_id: blaze.id, user_id: bob.id, total_price: 44)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 7, 6.5), end_time: Date.new(2023, 7, 8.5), bike_id: blaze.id, user_id: ryan.id, total_price: 44)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 6, 6.5), end_time: Date.new(2023, 6, 8.5), bike_id: blaze.id, user_id: sophie.id, total_price: 44)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 5, 6.5), end_time: Date.new(2023, 5, 8.5), bike_id: blaze.id, user_id: anastasia.id, total_price: 44)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 4, 6.5), end_time: Date.new(2023, 4, 8.5), bike_id: blaze.id, user_id: jack.id, total_price: 44)
puts 'creating booking'

booking = Booking.create!(start_time: Date.new(2023, 7, 6.5), end_time: Date.new(2023, 7, 8.5), bike_id: solar.id, user_id: bob.id, total_price: 22)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 6, 6.5), end_time: Date.new(2023, 6, 8.5), bike_id: solar.id, user_id: ryan.id, total_price: 22)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 5, 6.5), end_time: Date.new(2023, 5, 8.5), bike_id: solar.id, user_id: sophie.id, total_price: 22)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 4, 6.5), end_time: Date.new(2023, 4, 8.5), bike_id: solar.id, user_id: anastasia.id, total_price: 22)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 3, 6.5), end_time: Date.new(2023, 3, 8.5), bike_id: solar.id, user_id: jack.id, total_price: 22)
puts 'creating booking'

booking = Booking.create!(start_time: Date.new(2023, 6, 6.5), end_time: Date.new(2023, 6, 8.5), bike_id: cyclone.id, user_id: bob.id, total_price: 64)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 5, 6.5), end_time: Date.new(2023, 5, 8.5), bike_id: cyclone.id, user_id: ryan.id, total_price: 64)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 4, 6.5), end_time: Date.new(2023, 4, 8.5), bike_id: cyclone.id, user_id: sophie.id, total_price: 64)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 3, 6.5), end_time: Date.new(2023, 3, 8.5), bike_id: cyclone.id, user_id: anastasia.id, total_price: 64)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 2, 6.5), end_time: Date.new(2023, 2, 8.5), bike_id: cyclone.id, user_id: jack.id, total_price: 64)
puts 'creating booking'

booking = Booking.create!(start_time: Date.new(2023, 5, 6.5), end_time: Date.new(2023, 5, 8.5), bike_id: cosmic.id, user_id: bob.id, total_price: 54)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 4, 6.5), end_time: Date.new(2023, 4, 8.5), bike_id: cosmic.id, user_id: ryan.id, total_price: 54)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 3, 6.5), end_time: Date.new(2023, 3, 8.5), bike_id: cosmic.id, user_id: sophie.id, total_price: 54)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 2, 6.5), end_time: Date.new(2023, 2, 8.5), bike_id: cosmic.id, user_id: anastasia.id, total_price: 54)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2023, 1, 6.5), end_time: Date.new(2023, 1, 8.5), bike_id: cosmic.id, user_id: jack.id, total_price: 54)
puts 'creating booking'

booking = Booking.create!(start_time: Date.new(2022, 10, 6.5), end_time: Date.new(2022, 10, 8.5), bike_id: eclipse.id, user_id: bob.id, total_price: 32)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 9, 6.5), end_time: Date.new(2022, 9, 8.5), bike_id: eclipse.id, user_id: ryan.id, total_price: 32)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 8, 6.5), end_time: Date.new(2022, 8, 8.5), bike_id: eclipse.id, user_id: sophie.id, total_price: 32)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 7, 6.5), end_time: Date.new(2022, 7, 8.5), bike_id: eclipse.id, user_id: anastasia.id, total_price: 32)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 6, 6.5), end_time: Date.new(2022, 6, 8.5), bike_id: eclipse.id, user_id: jack.id, total_price: 32)
puts 'creating booking'

booking = Booking.create!(start_time: Date.new(2022, 9, 6.5), end_time: Date.new(2022, 9, 8.5), bike_id: titan.id, user_id: bob.id, total_price: 26)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 8, 6.5), end_time: Date.new(2022, 8, 8.5), bike_id: titan.id, user_id: ryan.id, total_price: 26)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 7, 6.5), end_time: Date.new(2022, 7, 8.5), bike_id: titan.id, user_id: sophie.id, total_price: 26)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 6, 6.5), end_time: Date.new(2022, 6, 8.5), bike_id: titan.id, user_id: anastasia.id, total_price: 26)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 5, 6.5), end_time: Date.new(2022, 5, 8.5), bike_id: titan.id, user_id: jack.id, total_price: 26)
puts 'creating booking'

booking = Booking.create!(start_time: Date.new(2022, 8, 6.5), end_time: Date.new(2022, 8, 8.5), bike_id: vortex.id, user_id: bob.id, total_price: 86)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 7, 6.5), end_time: Date.new(2022, 7, 8.5), bike_id: vortex.id, user_id: ryan.id, total_price: 86)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 6, 6.5), end_time: Date.new(2022, 6, 8.5), bike_id: vortex.id, user_id: sophie.id, total_price: 86)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 5, 6.5), end_time: Date.new(2022, 5, 8.5), bike_id: vortex.id, user_id: anastasia.id, total_price: 86)
puts 'creating booking'
booking = Booking.create!(start_time: Date.new(2022, 4, 6.5), end_time: Date.new(2022, 4, 8.5), bike_id: vortex.id, user_id: jack.id, total_price: 86)
puts 'creating booking'

review = Review.create!(user_id: bob.id, bike_id: turbo.id, rating: 4, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'
review = Review.create!(user_id: bob.id, bike_id: blaze.id, rating: 4, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'

review = Review.create!(user_id: bob.id, bike_id: cyclone.id, rating: 4, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'
review = Review.create!(user_id: bob.id, bike_id: eclipse.id, rating: 3, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'
review = Review.create!(user_id: bob.id, bike_id: solar.id, rating: 4, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'
review = Review.create!(user_id: bob.id, bike_id: thunderbolt.id, rating: 4, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'
review = Review.create!(user_id: bob.id, bike_id: titan.id, rating: 3, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'
review = Review.create!(user_id: bob.id, bike_id: vortex.id, rating: 4, comment: 'Really enjoyed this bike! No problems spotted apart from a complicated shift between 3rd and 4th gear')
puts 'creating review'

review = Review.create!(user_id: sophie.id, bike_id: turbo.id, rating: 5, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: blaze.id, rating: 4, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: cosmic.id, rating: 5, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: cyclone.id, rating: 4, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: eclipse.id, rating: 5, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: solar.id, rating: 4, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: thunderbolt.id, rating: 4, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: titan.id, rating: 5, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'
review = Review.create!(user_id: sophie.id, bike_id: vortex.id, rating: 5, comment: 'Awesome bike! Spotless experience from start to finish! Really kind owner too!')
puts 'creating review'

review = Review.create!(user_id: jack.id, bike_id: turbo.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: blaze.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: cosmic.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: cyclone.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: eclipse.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: solar.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: thunderbolt.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: titan.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'
review = Review.create!(user_id: jack.id, bike_id: vortex.id, rating: 4, comment: 'The bike felt really good, I just felt the breaking was a little bit off but nothing too dangerous')
puts 'creating review'

review = Review.create!(user_id: ryan.id, bike_id: turbo.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: blaze.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: cosmic.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: cyclone.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: eclipse.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: solar.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: thunderbolt.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: titan.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'
review = Review.create!(user_id: ryan.id, bike_id: vortex.id, rating: 3, comment: 'I had a good time in this city with this bike. However the chain was in poor state and the pedaling felt a bit stiff')
puts 'creating review'

review = Review.create!(user_id: anastasia.id, bike_id: turbo.id, rating: 1, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: blaze.id, rating: 3, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: cosmic.id, rating: 2, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: cyclone.id, rating: 1, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: eclipse.id, rating: 3, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: solar.id, rating: 2, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: thunderbolt.id, rating: 2, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: titan.id, rating: 1, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
review = Review.create!(user_id: anastasia.id, bike_id: vortex.id, rating: 3, comment: 'The bike definitely needs maintenance. I feel like I struggled way too much to get around')
puts 'creating review'
