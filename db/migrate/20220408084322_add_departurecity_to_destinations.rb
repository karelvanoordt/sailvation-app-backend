class AddDeparturecityToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :departure_city, :string
  end
end
