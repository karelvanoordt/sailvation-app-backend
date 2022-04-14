module Api
  module V1
    class CruisesController < ApplicationController

      before_action :set_cruise, only: :destroy

      def index
        @cruises = Cruise.all
        render json: @cruises
      end

      def show
        @cruise = Cruise.find(params[:id])
      end

      def new
        @user = User.find(params[:user_id])
        @cruise = @user.cruises.new
      end

      def create
        @user = User.find(params[:user_id])
        @cruise = @user.cruises.create!(cruise_params)
        # @cruise.user_id = @user.id
        if @cruise.save
          render json: @cruise, status: :created, location: api_v1_user_cruises_path(@cruise)
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

      def destroy
        @cruise.destroy
        render json: { message: 'cruise successfully deleted' }
      end

      private

      def cruise_params
        params.require(:cruise).permit(:name, :description, :image, :user_id)
      end

      def set_cruise
        @cruise = Cruise.find(params[:id])
      end
    end
  end
end
