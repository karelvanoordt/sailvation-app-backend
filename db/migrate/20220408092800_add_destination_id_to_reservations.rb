class AddDestinationIdToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :destination_id, :integer
  end
end
