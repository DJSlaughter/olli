class List < ApplicationRecord
  belongs_to :user
  has_many :movie_lists
  has_many :movies, through: :movie_lists


  def first_movie_url
    movie = self.movies.first
    if movie.nil?
      "http://placehold.it/30x30"
    else
      movie.poster_url
    end
   end

end
