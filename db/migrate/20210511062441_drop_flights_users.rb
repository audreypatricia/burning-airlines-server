class DropFlightsUsers < ActiveRecord::Migration[5.2]
  def up
    drop_table :flights_users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
