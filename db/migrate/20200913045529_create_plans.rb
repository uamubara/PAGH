class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :Membership_plan
      t.decimal :price, precision: 8, scale: 2
      t.string :currency

      t.timestamps
    end
  end
end
