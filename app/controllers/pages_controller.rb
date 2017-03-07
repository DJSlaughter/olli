class PagesController < ApplicationController
  layout "home", only: [ :home ]
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
   @lists = List.all
   @movies = Movie.all

  end

  def dashboard
  @lists = List.all
    search_value = params[:search_value]
    if !search_value.nil?
      @search_result = Tmdb::Genre.movie_list
      #@search_result = Tmdb::Search.keyword(search_value).results
      # Tmdb::Genre.movie_list.each do |genre|
      #     if genre.name.downcase == search_value.downcase
      #       genre_movies = Tmdb::Genre.movies(genre.id)
      #       @search_result = genre_movies.results
      #       puts @search_result
      #     end
      #  end
    end
  end
end
