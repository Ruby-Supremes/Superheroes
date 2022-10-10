class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    def index
        render json: Power.all
    end
    def show
        power = Power.find(params[:id])
        render json: power
    end
    def update
        power = Power.find_by(id: params[:id])
            if power
                power.update(power_params)
                render json: power
            else
                render json: {error: "Power not found"}, status: :no_content
            end
    end
    private
    def not_found_response
        render json: {error: 'Power Not Found' }, status: :no_content
    end
    def power_params
        params.permit(:name, :description)
      end
end
