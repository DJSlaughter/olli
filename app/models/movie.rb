class Movie < ApplicationRecord
  has_many :lists, through: :movie_lists
  has_many :tags, foreign_key: :movie_id
  has_many :favourites, foreign_key: :movie_id
  has_many :genres, through: :movie_genres
  has_many :movie_lists, foreign_key: :movie_id
  has_many :movie_genre, foreign_key: :movie_id

  # has_many :users, through: :tags # These relationship not required yet
  # has_many :users, through: :favourites # These relationship not required yet
end
