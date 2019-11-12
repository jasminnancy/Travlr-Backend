class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    users = User.all
    render :json => users, :except => [:password_digest],
    :include => {
      :luggages => {
        :except => [:user_id, :created_at, :updated_at]
      },
      :trips => {
        :except => [:user_id, :created_at, :updated_at]
      }
    }
  end

  def create
    user = User.create(user_params)
    render json: user, status: 201
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def destroy
    @user.destroy
    render json: {message: "User was successfully deleted.", userId: @user.id}
  end

  def show
    render :json => @user, :except => [:password_digest],
    :include => {
      :luggages => {
        :except => [:user_id, :created_at, :updated_at]
      },
      :trips => {
        :except => [:user_id, :created_at, :updated_at]
      }
    }
  end

  private
  def user_params
    params.permit(:username, :email, :first_name, :last_name, :phone_number, :address1, :address2, :city, :state, :zip, :country, :bio, :profile_pic, :created_at, :updated_at)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
