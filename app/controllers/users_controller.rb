class UsersController < ApplicationController
  def index
    if params[:search].present?
      @users = User.where("name LIKE ?", "%#{params[:search]}%")
    else
      @users = User.all
    end
    @users = @users.page(params[:page]).per(15) # Change '15' to the desired number of users per page
  end

  def show
    @user = User.find(params[:id])
  end
end
