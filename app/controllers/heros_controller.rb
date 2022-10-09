class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    def index
        render json: Hero.all
    end
    def show
        hero = Hero.find(params[:id])
        render json: hero, include: :powers
    end
    private
    def not_found_response
        render json: {error: 'Hero Not Found' }
    end
end
