class AddSeatSelectionToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :seat_selection, :text
  end
end
