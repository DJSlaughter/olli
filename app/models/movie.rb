class Movie < ApplicationRecord
  has_many :lists, through: :movie_lists
  has_many :tags
  has_many :favourites
  has_many :genres, through: :movie_genres
  has_many :users, through: :tags
  has_many :users,through: :favourites
end
