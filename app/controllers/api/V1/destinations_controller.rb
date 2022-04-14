module Api
  module V1
    class DestinationsController < ApplicationController
      def index
        @destinations = Destination.all
        render json: @destinations
      end

      def create
        @destination = Destination.new(destination_params)

        if @destination.save
          render json: @destination, status: :created
        else
          render json: @destination.errors, status: :unprocessable_entity
        end
      end

      def show
        @destination = Destination.find(params[:id])
        render json: @destination
      end

      private

      def destination_params
        params.require(:destination).permit(:country, :city, :image, :price, :days, :departure_city)
      end
    end
  end
end
