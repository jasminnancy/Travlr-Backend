class HotelsController < ApplicationController
    before_action :set_hotel, only: [:show, :update, :destroy]

    def index
      hotels = Place.all
      render json: hotels, status: 200
    end
  
    def create
      hotel = Hotel.create(hotel_params)
      render json: hotel, status: 201
    end
  
    def update
      @hotel.update(hotel_params)
      render json: @hotel, status: 200
    end
  
    def destroy
      @hotel.destroy
      render json: {message: "Hotel was successfully deleted.", hotelId: @hotel.id}
    end
  
    def show
      render json: @hotel, status: 200
    end
  
    private
    def hotel_params
      params.permit(:name, :cost, :starting_date, :ending_date, :address1, :address2, :city, :state, :zip, :country, :notes)
    end
  
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end
end
