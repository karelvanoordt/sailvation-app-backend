module Api
  module V1
    class DestinationsController < ApplicationController
      def index
        @destinations = Destination.all
      end

      def show
        @destination = Destination.find(params[:id])
        render json: @destination
      end
    end
  end
end
