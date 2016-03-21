class Users::BeersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @beers = @user.beers
  end
end
