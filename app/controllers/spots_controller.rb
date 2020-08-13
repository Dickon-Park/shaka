class SpotsController < ApplicationController
    before_action :set_spot, only: [ :show, :edit, :update, :destroy ]

    def index
        # @spots = Spot.all
        @spots = Spot.geocoded # returns spots with coordinates

        @markers = @spots.map do |spot|
        {
            lat: spot.latitude,
            lng: spot.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { spot: spot })
        }
        end
    end

    def new
        @spot = Spot.new
    end

    def create
        @spot = Spot.new(spot_params)
        if @spot.save
            redirect_to spot_path(@spot), notice: 'Spot was successfully created'
        else
            render :new
        end
    end
    
    def show
        # Find my favourites
       @my_favourite = current_user.favourites.find_by(spot: @spot)
        # I'd like to find the favourite for a specific spot in my favourites
       @review = Review.new
       @amenity = Amenity.new
    end
   
    def edit
    end

    def update
        @spot = Spot.update(spot_params)
        
        redirect_to spot_path(@spot)
    end

    def destroy 
        @spot = Spot.destroy

        redirect_to spots_path
    end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :address, :longitude, :latitude, :description, :skill_level, disciplines: [], photos: [])
  end
end
