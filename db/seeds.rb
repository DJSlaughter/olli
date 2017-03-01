# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Genre.destroy_all

50.times do |index|
  Movie.create!(name: Faker::Book.title)

end

50.times do |index|
  Genre.create!(name: Faker::Book.genre)

end




p "Created #{Movie.count} movies"
p "Created #{Genre.count} Genres"
