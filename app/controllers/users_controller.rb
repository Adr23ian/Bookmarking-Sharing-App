class UsersController < ApplicationController
  def show
  end

  def index
    @users = User.all
  end

  def add_amigo
    friend = User.find(params[:friend_id])
    user = User.find(params[:id])
    user.add_friend(friend)
    flash[:notice] = "Your friend was added to the list! :)"
    redirect_back fallback_location: root_path
  end

end
