class UsersController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create 
    @user = User.new(params)
    if @user.save
      redirect_to @user 
    else  
      redirect_to root_path
    end
    
  end

  def show 
    @user = User.find(params[:id])
  end
  
  private 
  def user_params 
    params.require(:user).permit(:name, :surname, :email,)
  end
end
