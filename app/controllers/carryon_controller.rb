class CarryonController < ApplicationController
    before_action :set_carryon, only: [:show, :update, :destroy]

    def index
      carryons = Carryon.all
      render json: carryons, status: 200
    end
  
    def create
      carryon = Carryon.create(carryon_params)
      render json: carryon, status: 201
    end
  
    def update
      @carryon.update(carryon_params)
      render json: @carryon, status: 200
    end
  
    def destroy
      @carryon.destroy
      render json: {message: "Luggage item was successfully removed from trip.", carryonId: @carryon.id}
    end
  
    def show
      render json: @carryon, status: 200
    end
  
    private
    def carryon_params
      params.permit(:luggage_id, :trip_id)
    end
  
    def set_carryon
      @carryon = Carryon.find(params[:id])
    end
end
