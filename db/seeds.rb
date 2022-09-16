# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Deleting old seeds
puts "Deleting Old Seeds"
User.destroy_all
Flat.destroy_all
Booking.destroy_all

# Creating new seeds
puts "Creating User"
user1 = User.create!(
  email: "user@email.com",
  password: "password123",
)

puts "Creating Host"
host1 = User.create!(
  email: "host@email.com",
  password: "password123",
  is_host: true
)

puts "Creating Flats"
flat1 = Flat.create!(
  title: Faker::Lorem.sentences(number: 1),
  description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
  location: "180 Orchard St 15th floor, New York, NY 10002, United States",
  latitude: 40.7217646,
  longitude: -73.9879798,
  price_per_night: 400,
  check_in: "2022-09-09T18:25:00",
  check_out: "2022-10-09T18:25:00",
  guests: 5,
  bedrooms: 3,
  bathrooms: 2,
  wifi: true,
  aircon: true,
  rating: 4,
  user: host1
)

puts "Creating Bookings"
Booking.create!(
  location: "manhattan",
  latitude: 40.7896239,
  longitude: -73.9598939,
  check_in: "2022-09-09T20:25:00",
  check_out: "2022-09-20T18:25:00",
  adults: 2,
  children: 1,
  user: user1,
  flat: flat1
)

puts "Creating Reviews"
Review.create!(
  date: "2022-09-01",
  description: Faker::Lorem.paragraph_by_chars(number: 100, supplemental: false),
  flat: flat1
)

puts "Seeds Completed!"
