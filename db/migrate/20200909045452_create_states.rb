class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :stateCode
      t.string :stateName

      t.timestamps
    end
  end
end
