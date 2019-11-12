class TripsController < ApplicationController
    before_action :set_trip, only: [:show, :update, :destroy]

    def index
      trips = Trip.all
      render :json => trips, :except => [:created_at, :updated_at],
        :include => {
          :carryons => {
            :except => [:trip_id, :luggage_id, :created_at, :updated_at],
            :include => {
              :luggage => {
                :except => [:user_id, :created_at, :updated_at]
              }
            }
          },
          :user => {
            :except => [:password_digest, :created_at, :updated_at]
          },
          :places => {
            :except => [:created_at, :updated_at]
          },
          :events => {
            :except => [:created_at, :updated_at]
          },
          :hotels => {
            :except => [:created_at, :updated_at]
          },
          :transportations => {
            :except => [:created_at, :updated_at]
          }
        }
    end
  
    def create
      trip = Trip.create(trip_params)
      render json: trip, status: 201
    end
  
    def update
      @trip.update(trip_params)
      render json: @trip, status: 200
    end
  
    def destroy
      @trip.destroy
      render json: {message: "Trip was successfully deleted.", tripId: @trip.id}
    end
  
    def show
      render :json => @trip, :except => [:created_at, :updated_at],
        :include => {
          :carryons => {
            :except => [:trip_id, :luggage_id, :created_at, :updated_at],
            :include => {
              :luggage => {
                :except => [:user_id, :created_at, :updated_at]
              }
            }
          },
          :user => {
            :except => [:password_digest, :created_at, :updated_at]
          },
          :places => {
            :except => [:created_at, :updated_at]
          },
          :events => {
            :except => [:created_at, :updated_at]
          },
          :hotels => {
            :except => [:created_at, :updated_at]
          },
          :transportations => {
            :except => [:created_at, :updated_at]
          }
        }
    end
  
    private
    def trip_params
      params.permit(:user_id, :title, :description, :photo, :start_date, :end_date, :budget, :created_at, :updated_at)
    end
  
    def set_trip
      @trip = Trip.find(params[:id])
    end
end
