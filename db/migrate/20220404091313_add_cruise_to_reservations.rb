class AddCruiseToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :cruise, null: false, foreign_key: true
  end
end
