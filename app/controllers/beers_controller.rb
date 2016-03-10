class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to beers_path
  end
  
  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beers_path
    else
      render 'new'
    end
  end

  def update
    @beer = Beer.find(params[:id])
    if @beer.update(beer_params)
      redirect_to beers_path
    else
      render 'edit'
    end
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :brewer, :style, :abv)
  end
end
