class RecoveriesController < ApplicationController

    def index
        @recoveries = Recovery.all
        render json: @recoveries
    end

    def create
        @recover = Recovery.create(
            activity: params[:activity],
            activity_level: params[:activity_level],
            cost: params[:cost]
        )
        render json: @recover
    end

    def show
        @recover = Recovery.find(params[:id])
        render json: @recover
    end

end
