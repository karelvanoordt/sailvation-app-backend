class Api::V1::CruisesController < ApplicationController
  def index
    @cruises = Cruise.all
    render json: @cruises
  end

  def show
    @cruise = Cruise.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @cruise = @user.cruise.new(cruise_params)
    @user.cruise = @cruise
    if @cruise.save
      render json: @cruise, status: :created
    else
      render json: @cruise.errors, status: :unprocessable_entity
    end
  end

  def update
    if @cruise.update(cruise_params)
      render json: @cruise
    else
      render json: @cruise.errors, status: :unprocessable_entity
    end
  end

  def delete
    @cruise.destroy
    render json: { message: 'cruise successfully deleted' }
  end

  private

  def cruise_params
    params.require(:cruise).permit(:name, :description, :image, :user_id)
  end
end
