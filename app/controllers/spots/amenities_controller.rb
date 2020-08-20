class Spots::AmenitiesController < ApplicationController
  
  
  def create
    @amenity = Amenity.new(amenity_params)
    @spot = Spot.find(params[:spot_id])
    @amenity.spot = @spot
    @amenity.save!
    redirect_to spot_path(@spot)
    
  end
    

  def new
  end


  def update
    @amenity.update(amenity_params)
    redirect_to spot_path(@spots)
  
  end

  private

  def amenity_params
    params.require(:amenity).permit(:category, :descripton, :address)

  end

end
