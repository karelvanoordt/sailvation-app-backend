class AddDaysToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :days, :integer
  end
end
