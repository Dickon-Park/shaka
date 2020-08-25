class AmenitiesController < ApplicationController
  def create
    @amenity = Amenity.new(amenity_params)
  end

  def update
    @amenity.update(amenity_params)
    redirect_to spot_path(@spot)
  end

  def destroy
    @amenity = Amenity.find(params[:id])
    @amenity.destroy
    redirect_to @amenity.spot, notice: 'Amenity deleted from your spot'
  end

  private

  def amenity_params
    params.require(:amenity).permit(:category, :description)
  end

end
