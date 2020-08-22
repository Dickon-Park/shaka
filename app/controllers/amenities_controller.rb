class AmenitiesController < ApplicationController
  def create
    @amenity = Amenity.new(amenity_params)
  end

  def update
    @amenity.update(amenity_params)
    redirect_to spot_path(@spots)
  end

  private

  def amenity_params
    params.require(:amenity).permit(:category, :description, status: 'updated')
  end

end
