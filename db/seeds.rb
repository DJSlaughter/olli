# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Movie.destroy_all
#Genre.destroy_all
#User.destroy_all



Tmdb::Api.key("f042a824cd1b94336f3d940c86ccc873")

@movie = Tmdb::Genre.movies(18)



#Discover movies by different types of data like average rating, number of votes, genres and certifications. You can get a valid list of certifications from Tmdb::Certification.
#Tmdb::Discover.movie

#Movie
#The find movie method makes it easy to search for objects in our database by an external id.
#Tmdb::Find.movie('tt0266543', external_source: 'imdb_id')

#Get the list of movie genres.
#Tmdb::Genre.movie_list

#Get the basic movie information for a specific movie id.
#Tmdb::Movie.detail(550)


















#require 'json'
#require 'open-uri'

#url = 'https://www.themoviedb.org/discover/movie?api_key=f042a824cd1b94336f3d940c86ccc873&primary_release_date.gte=2014-09-15&primary_release_date.lte=2014-10-22'
#all_movies = open(url).read
#user = JSON.parse(all_movies)

#puts all_movies
