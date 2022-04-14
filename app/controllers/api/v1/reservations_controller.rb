module Api
  module V1
    class ReservationsController < ApplicationController
      before_action :set_reservation, only: :destroy

      def index
        @user = User.find(params[:user_id])
        @reservations = @user.reservations

        render json: @reservations
      end

      def create
        @user = User.find(params[:user_id])
        @reservation = @user.reservations.new(reservation_params)

        if @reservation.save
          render json: @reservation, status: :created
        else
          render json: @reservation.errors, status: :unprocessable_entity
        end
      end

      def destroy
        if @reservation.destroy
          render json: { message: 'Reservation has been successfully deleted' }
        else
          render json: @reservation.errors, status: :unprocessable_entity
        end
      end

      private

      def set_reservation
        @reservation = Reservation.find(params[:id])
      end

      def reservation_params
        params.require(:reservation).permit(:cruise_id, :destination_id, :user_id, :start_date)
      end
    end
  end
end
