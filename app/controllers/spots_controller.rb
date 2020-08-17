class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]  
  before_action :set_spot, only: [ :show, :edit, :update, :destroy ]

    def index
        # @spots = Spot.all
        @spots = Spot.geocoded # returns spots with coordinates
        if params[:skill_discipline].present?
          @spots = @spots.where(skill_level: current_user.skill_level).where("'#{current_user.discipline}' = Any (disciplines)")
        else params[:query].present?
          @spots = @spots.where("address ILIKE ?", "%#{params[:query]}%")
        end 

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
        @spot.user = current_user
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
      @spot.update(spot_params)
        
      redirect_to spot_path(@spot)
    end

    def destroy 
        @spot = @spot.destroy

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
