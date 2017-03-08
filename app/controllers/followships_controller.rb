class FollowshipsController < ApplicationController

  def create
      # create a followship object using current user as follower_id
      # and user_show_id as the followee id
      # check if the relationship already exists
      f = Followship.new
      f.follower = current_user
      f.followee = User.find(params[:user_id])
      f.save
  end

  def destroy
      fd = Followship.where(followee_id: params[:user_id])
      fd.destroy
  end




end
