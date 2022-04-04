module Api
  module V1
    class DestinationsController < ApplicationController
      def show
        @destination = Destination.find(params[:id])
        render json: @destination
      end

      def create
        @destination = Destination.create(destination_params)
        render json: @destination
      end

      private

      def destination_params
        params.require(:destination).permit(:city, :country, :image)
      end
    end
  end
end

