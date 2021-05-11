class RemoveBrandFromAirplane < ActiveRecord::Migration[5.2]
  def change
    remove_column :airplanes, :brand, :text
  end
end
