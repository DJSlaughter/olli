# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Genre.destroy_all
User.destroy_all



10.times do |index|
  User.create!(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: Faker::Internet.password(20), reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-31 22:27:09", last_sign_in_at: "2014-12-31 22:27:09", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")

end

50.times do |index|
  Movie.create!(name: Faker::Book.title)

end

50.times do |index|
  Genre.create!(name: Faker::Book.genre)

end



p "Created #{Movie.count} movies"
p "Created #{Genre.count} Genres"

