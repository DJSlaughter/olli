class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    # @list = List.new(params[:something])
    @list = List.new
    @list.user = current_user
    @list.name = params[:name]

    movies = Movie.find_all_by_id(params[:movie_id])
    @list.movies << movies

    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def update
   @list = List.find(params[:id])

   if @list.update(list_params)
      redirect_to list_path(@list)    #:action => 'show'
    else
      render :edit
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to current_user.lists
  end

end
