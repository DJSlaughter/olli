class Genre < ApplicationRecord
  has_many :movies, through: :movie_genres
  has_many :movie_genre, foreign_key: :genre_id
end
