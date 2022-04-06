class AddPriceToCruises < ActiveRecord::Migration[7.0]
  def change
    add_column :cruises, :daily_price, :decimal
  end
end
