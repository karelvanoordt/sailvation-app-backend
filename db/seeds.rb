# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(name: 'Karel', email: 'karel@gamil.com')
user2 = User.create!(name: 'Hamid', email: 'hamid@gamil.com')
user3 = User.create!(name: 'Orcun', email: 'orcun@gamil.com')
cruise = Cruise.create!(name: 'Titanic', description: 'hello', image: 'https://www.titanic.com/wp-content/uploads/2017/10/titanic-movie-poster-1.jpg', user_id: user1.id)
destination = Destination.create!(days: 5, departure_city: 'Cape Town', city: 'kempton park', country: 'england', image: 'https://www.titanic.com/wp-content/uploads/2017/10/titanic-movie-poster-1.jpg')
reservation = Reservation.create!(user_id: 1, destination_id: 1, cruise_id: 1, start_date: '2015-01-01')
