class FavouritesController < ApplicationController
  def new
    @spot = Spot.find(params[:spot_id])
    @favourite = Favourite.new
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.spot = @spot
    if @favourite.save
      redirect_to spot_path(@spot), notice: 'Spot saved'
    end

  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to @favourite.spot, notice: 'Spot deleted from your favourites'
  end
end
