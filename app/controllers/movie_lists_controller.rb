class MovieListsController < ApplicationController


  def add_movie
    if Movie.find_by_name(params[:title])
      @new_movie = Movie.find_by_name(params[:title])
    else
      @new_movie = Movie.new(name: params[:title], overview: params[:overview], release_date: params[:release_date], poster_url: params[:poster_url])
    end
    @new_movie.save
    new_movie_list = MovieList.new(list_id: params[:list_id], movie_id: @new_movie.id)
    new_movie_list.save

    params[:genre_ids].each do |g|
      gName = Tmdb::Genre.movie_list.select{|x| x.id == g.to_i}.first.name
      genreInDB = Genre.find_by_name(gName)
      if genreInDB
        MovieGenre.create(genre_id: genreInDB.id, movie_id: @new_movie.id)
      else
        genre = Genre.create(name: gName)
        MovieGenre.create(genre_id: genre.id, movie_id: @new_movie.id)
      end
    end
    redirect_to edit_list_path(params[:list_id])
  end

  def remove_movie
       disposable_movie= MovieList.find(params[:id])
       disposable_movie.destroy
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
