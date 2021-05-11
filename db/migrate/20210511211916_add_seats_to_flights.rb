class AddSeatsToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :seats, :integer
  end
end
