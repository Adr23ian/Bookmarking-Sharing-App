class UsersController < ApplicationController
  def show
  end

  def index
    @users = User.all
  end

  def add_amigo
    friend = User.find(params[:friend_id])
    user = User.find(params[:id])
    flash[:notice] = user.add_friend(friend)
    redirect_back(fallback_location: users_path)
  end

end
