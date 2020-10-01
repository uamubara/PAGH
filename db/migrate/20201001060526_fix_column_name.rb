class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :plans, :Membership_plan, :membershipPlan
  end
end
