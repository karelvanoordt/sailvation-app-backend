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
  
    api :POST, '/users/:user_id/reservations', 'Create a new reservation for a cruise'
    def create
      reservation = Reservation.create(user_id: params[:user_id], cruise_id: params[:cruise_id])
      render json: reservation, adapter: :json_api, status: :ok if reservation.save!
    end
  
    api :DELETE, '/users/:user_id/reservations/:id', 'Delete a reservation for a cruise'
    def destroy
      reservation = Reservation.find(params[:id])
      reservation.destroy
      render json: { message: 'Reservation has been deleted succesfully!', reservation: reservation.cruise.name },
             adapter: :json_api, status: :ok
    end
  end