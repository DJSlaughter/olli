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
    @list = List.new
    @list.user = current_user

    @movie_list = MovieList.new
    # @movie_list.list_id = @list.id
    @movie_list.list = @list


    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
