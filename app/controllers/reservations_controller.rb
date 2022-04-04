class ReservationsController < ApplicationController
    api :GET, '/users/:user_id/reservations', "This is index view for user's reservations"
    def index
      user = User.find(params[:user_id])
      reservations = user.reservations
      cruise = []
      reservations.each do |reserve|
        cruise = Cruise.find(reserve.cruise_id)
        cruise.push cruise
      end
      render json: cruise, adapter: :json_api, status: :ok
    end
  
   