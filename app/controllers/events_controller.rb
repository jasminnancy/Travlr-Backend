class EventsController < ApplicationController
    before_action :set_event, only: [:show, :update, :destroy]

    def index
      events = Event.all
      render json: events, status: 200
    end
  
    def create
      event = Event.create(event_params)
      render json: event, status: 201
    end
  
    def update
      @event.update(event_params)
      render json: @event, status: 200
    end
  
    def destroy
      @event.destroy
      render json: {message: "Event was successfully deleted.", eventId: @event.id}
    end
  
    def show
      render json: @event, status: 200
    end
  
    private
    def event_params
      params.permit(:name, :start_date, :start_time, :end_date, :end_time, :cost, :address1, :address2, :city, :state, :zip, :country, :notes)
    end
  
    def set_event
      @event = Event.find(params[:id])
    end
end
