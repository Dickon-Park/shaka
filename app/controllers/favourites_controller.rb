class FavouritesController < ApplicationController
  def new
    @spot = Spot.find(params[:spot_id])
    @favourite = Favourite.new
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @favourite = Favourite.new(favourite_params)
    if @favourite.save
      redirect_to spot_path(@spot), notice: 'Spot saved'
    end

  end

  def destroy
    @favourite.destroy
  end
end
