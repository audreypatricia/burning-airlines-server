class AddAirplaneBrandToAirplanes < ActiveRecord::Migration[5.2]
  def change
    add_column :airplanes, :brand, :text
  end
end
