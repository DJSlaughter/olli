class Movie < ApplicationRecord
  has_many :lists
  has_many :tags
  has_many :favourites
  has_many :genres, through: :movie_genres
  has_many :movie_lists
  has_many :movie_genre

  validates :name, presence: true

  # has_many :users, through: :tags # These relationship not required yet
  # has_many :users, through: :favourites # These relationship not required yet
end
