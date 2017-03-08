class MovieListsController < ApplicationController


  def add_movie
    new_movie = Movie.new(name: params[:title], overview: params[:overview], release_date: params[:release_date], poster_url: params[:poster_url])
    new_movie.save
    new_movie_list = MovieList.new(list_id: params[:list_id], movie_id: new_movie.id)
    new_movie_list.save
    redirect_to edit_list_path(params[:list_id])
  end

  def remove_movie

   disposable_movie_list = MovieList.where(list_id: params[:list_id])
   movie_list_destroy = disposable_movie_list.find do |x| x.id = params[:movie_id] end

   MovieList.destroy(movie_list_destroy.id)

   redirect_to edit_list_path(params[:list_id])


  end
  # def index
  #   @movie_lists = MovieList.all
  # end

  # def show
  #   @movie_list = MovieList.find(params[:list_id])
  #   # @review = Review.new
  # end

  # # def show
  # #   @restaurant = Restaurant.find(params[:id])
  # #   @review = Review.new  # <-- You need this now.
  # # end

  # def new
  #   @movie_list = MovieList.find(params[:list_id])
  # end

  # def create
  #   @movie_list = MovieList.find(params[:list_id])
  #   @movie_list.list

  #   if @movie_list.save
  #     redirect_to movie_booking_path(@movie, @movie_list)   #:action => 'show'

  #   else
  #     render :new
  #   end
  # end

  # def update
  #  @movie_list = MovieList.find(params[:id])

  #  if @movie_list.update(movie_list_params)
  #     redirect_to movie_list_path(@movie)    #:action => 'show'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @movie_list = MovieList.find(params[:id])
  #   @movie_list.destroy
  #   redirect_to current_user.movie_lists
  # end


  # private

  # def movie_list_params
  #   params.require(:movie_list).permit(:list_id, :movie_id)
  # end

end
