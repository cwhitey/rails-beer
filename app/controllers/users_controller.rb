class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
  end

  def add_beer
    @user = User.find(params[:id])
    @beer = Beer.find(params[:beer][:id])
  end
  
end
