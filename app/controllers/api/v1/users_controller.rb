module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: @users
      end

      def create
        @user = User.new(user_params)
        return render json: @user.errors, status: :unprocessable_entity unless @user.save

        render json: @user, status: :created
      end

      def show
        @reservations = Reservation.where(user_id: params[:id])
        render json: @reservations
      end

      def destroy
        @user.destroy
      end

      private

      def user_params
        params.require(:user).permit(:name, :email)
      end
    end
  end
end
