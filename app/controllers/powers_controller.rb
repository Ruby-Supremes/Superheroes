class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    def index
        render json: Power.all
    end
    def show
        power = Power.find(params[:id])
        render json: power
    end
    private
    def not_found_response
        render json: {error: 'Power Not Found' }
    end
end
