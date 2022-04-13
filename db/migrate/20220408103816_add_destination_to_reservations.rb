class AddDestinationToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :destination, null: false, foreign_key: true
  end
end
