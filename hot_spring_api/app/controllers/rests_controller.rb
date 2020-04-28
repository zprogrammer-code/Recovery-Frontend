class RestsController < ApplicationController
    def index
        @rests = Rest.all
        render json: @rests
    end

    def show
        @rest = Rest.find_by(params[:id])
        render json: @rest
    end

    def create
        @rest = Rest.create(
            name: params[:name],
            type: params[:type],
            capacity: params[:capacity],
            location: params[:location_id]
        )
        render json: @rest
    end
end
