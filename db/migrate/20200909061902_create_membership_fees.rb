class CreateMembershipFees < ActiveRecord::Migration[5.2]
  def change
    create_table :membership_fees do |t|
      t.string :membership_fees_status

      t.timestamps
    end
  end
end
