class UsersController < ApplicationController
  def index
    @users = User.all
  end
 
  def show
    #@user = User.find(params[:user_id])
    @user = User.find_by(id:params[:id])
  end
end
