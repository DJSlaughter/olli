class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
    @movie_list = MovieList.new
  end

  def create
    @list = find_list

    @movie_list = MovieList.new
    @movie_list.list = @list


  end

  def search
    @list = find_list
    @movie = Movie.new
  end

  def search_results
    @movie = params[:movie][:name]
    @results = Tmdb::Search.movie(@movie)
    @movies = @results.results
  end


  private

  def find_list
    @list = List.find(params[:list_id])
  end
end
