class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.text :date
      t.text :flight_to
      t.text :flight_from

      t.timestamps
    end
  end
end
