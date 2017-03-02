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


  private

  def find_list
    @list = List.find(params[:list_id])
  end
end
