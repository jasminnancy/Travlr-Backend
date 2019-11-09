class TransportationsController < ApplicationController
    before_action :set_transportation, only: [:show, :update, :destroy]

    def index
      transportations = Transportation.all
      render json: transportations, status: 200
    end
  
    def create
        transportation = Transportation.create(luggage_params)
      render json: transportation, status: 201
    end
  
    def update
      @transportation.update(transportation_params)
      render json: @transportation, status: 200
    end
  
    def destroy
      @transportation.destroy
      render json: {message: "Transportation was successfully deleted.", transportationId: @transportation.id}
    end
  
    def show
      render json: @transportation, status: 200
    end
  
    private
    def transportation_params
      params.permit(:transport_type, :cost, :company, :starting_date, :starting_time, :ending_date, :ending_time, :starting_location, :destination, :total_miles, :confirmation_code, :notes)
    end
  
    def set_transportation
      @transportation = Transportation.find(params[:id])
    end
end
