class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def following
    current_user.followees.include?(User.find(params[:id]))

  end


end
