class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
   @lists = List.all
   @movies = Movie.all

  end

  def dashboard
    @lists = List.all
    @movie_titles = []
    @movies_out = []

    search_value = params[:search_value]
      if !search_value.nil?
        #@search_result = Tmdb::Genre.movie_list
        #@search_result = Tmdb::Search.keyword(search_value).results
        Tmdb::Genre.movie_list.each do |genre|
            if genre.name.downcase == search_value.downcase
              genre_movies = Tmdb::Genre.movies(genre.id)
              @search_result = genre_movies.results


              @search_result.flatten.each do |m| @movie_titles << m.title end
              # @movie_titles is an array of the movie titles from the API

              @movies_out = List.has_movies?(@movie_titles)
              # @movies_out is an array of movie obj IF the searched movies are in any list

            end
         end
      end

      @movies_out
  end
end

