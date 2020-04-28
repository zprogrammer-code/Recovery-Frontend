class LocationsController < ApplicationController

    def index
        @locations = Location.all
        render json: @locations
    end

    def create
        @location = Location.create(
            city: params[:city]
        )
        render json: @location
    end

    def show
        @location = Location.find(params[:id])
        render json: @location
    end
end
