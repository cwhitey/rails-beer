class Users::BeersController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]
  
  def index
    @user = User.find(params[:user_id])
    @beers = @user.beers
  end

  def update
    @user = User.find(params[:user_id])
    unless @user.beers.any? { |beer| beer.id == params[:id] }
      @user.beers << Beer.find(params[:id])
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @user.beers.destroy(params[:id])
    redirect_to user_beers_path(current_user)
  end
end
