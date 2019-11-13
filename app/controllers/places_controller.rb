class PlacesController < ApplicationController
    before_action :set_place, only: [:show, :update, :destroy]

    def index
      places = Place.all
      render json: places, status: 200
    end
  
    def create
      place = Place.create(place_params)
      render json: place, status: 201
    end
  
    def update
      @place.update(place_params)
      render json: @place, status: 200
    end
  
    def destroy
      @place.destroy
      render json: {message: "Place was successfully deleted.", placeId: @place.id}
    end
  
    def show
      render json: @place, status: 200
    end
  
    private
    def place_params
      params.permit(:trip_id, :name, :cost, :address1, :address2, :city, :us_state, :zip, :country, :notes)
    end
  
    def set_place
      @place = Place.find(params[:id])
    end
end
