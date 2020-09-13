class AddStateIdToCounty < ActiveRecord::Migration[5.2]
  def change
    add_column :counties, :stateID, :integer
  end
end
