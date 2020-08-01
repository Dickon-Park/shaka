class SpotsController < ApplicationController
    before_action :set_spot, only: [ :show, :edit, :update, :destroy ]

    def index
        @spots = Spot.all
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
    params.require(:spot).permit(:name, :longitude, :latitude, :description, :skill_level, :disciplines)
  end
end
