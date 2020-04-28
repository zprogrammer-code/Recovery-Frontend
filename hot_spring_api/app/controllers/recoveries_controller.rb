class RecoveriesController < ApplicationController

    def index
        @recoveries = Rocoveries.all
        render json: @recoveries
    end

    def create
        @recover = Rocoveries.create(
            activity: params[:activity],
            activity_level: params[:activity_level],
            cost: params[:cost]
        )
        render json: @recover
    end

    def show
        @recover = Rocoveries.find(params[:id])
        render json: @recover
    end
end
