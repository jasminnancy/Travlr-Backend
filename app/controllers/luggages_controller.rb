class LuggagesController < ApplicationController
    before_action :set_luggage, only: [:show, :update, :destroy]

    def index
      luggages = Luggage.all
      render json: luggages, :except => [:created_at, :updated_at],
        :include => {
          :carryons => {
            :except => [:created_at, :updated_at]
          }
        }
    end
  
    def create
      luggage = Luggage.create(luggage_params)
      render json: luggage, status: 201
    end
  
    def update
      @luggage.update(luggage_params)
      render json: @luggage, status: 200
    end
  
    def destroy
      @luggage.destroy
      render json: {message: "Luggage item was successfully deleted.", luggageId: @luggage.id}
    end
  
    def show
      render json: @luggage, status: 200
    end
  
    private
    def luggage_params
      params.permit(:user_id, :name, :size, :miles_travelled, :luggage_type)
    end
  
    def set_luggage
      @luggage = Luggage.find(params[:id])
    end
end
