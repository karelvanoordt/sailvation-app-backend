# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(name: 'Karel', email: 'karel@gamil.com')
cruise = Cruise.create!(name: 'Titanic', description: 'hello', image: 'https://www.titanic.com/wp-content/uploads/2017/10/titanic-movie-poster-1.jpg', user_id: user1.id)
destination = Destination.create!(price: 165, days: 4, departure_city: 'Miami', city: 'Nassau', country: 'The bahamas', image: 'https://images.unsplash.com/photo-1548574505-5e239809ee19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwYmFoYW1hc3xlbnwwfHwwfHw%3D&w=1000&q=80')
destination = Destination.create!(price: 1100, days: 14, departure_city: 'Baltimore', city: 'Panama Canal', country: 'Panama', image: 'https://images2.alphacoders.com/647/thumb-1920-647161.jpg')
destination = Destination.create!(price: 200, days: 5, departure_city: 'Charleston', city: 'Nassau', country: 'The bahamas', image: 'https://wallpapercave.com/wp/wp2297277.jpg')
destination = Destination.create!(price: 380, days: 8, departure_city: 'New Orleans', city: 'Half Moon Cay', country: 'Eastern Caribbean', image: 'https://thumbor.thedailymeal.com/Lwo_ZciPkdbjj6LlQBE6oyUfm5w=//https://www.theactivetimes.com/sites/default/files/2020/04/15/GettyImages-854047790.jpg')
destination = Destination.create!(price: 490, days: 7, departure_city: 'Jacksonville', city: 'Grand Turk', country: 'Eastern Caribbean', image: 'https://media.cntraveler.com/photos/5f8745e4428582a0bb860564/master/w_4437,h_2958,c_limit/Guadeloup-GettyImages-1182423596.jpg')
reservation = Reservation.create!(user_id: 1, destination_id: 1, cruise_id: 1, start_date: '2015-01-01')
