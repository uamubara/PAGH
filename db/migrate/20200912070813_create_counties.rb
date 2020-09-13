class CreateCounties < ActiveRecord::Migration[5.2]
  def change
    create_table :counties do |t|
      t.string :county
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
