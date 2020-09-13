class DropCountyTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :counties
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
