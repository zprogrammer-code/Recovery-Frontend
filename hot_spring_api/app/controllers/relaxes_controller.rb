class RelaxesController < ApplicationController
    def index
        @relaxes = Relax.all
        render json: @relaxes
    end

    def show
        @relax = Relax.find_by(params[:id])
        render json: @relax
    end

    def create
        @relax = Relax.create(
            name: params[:name],
            capacity: params[:capacity],
            vibe: params[:vibe],
            location: params[:location_id]
        )
        render json: @relax
    end
end
