class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :member_no
      t.string :title
      t.string :first_name
      t.string :middle_initial
      t.string :last_name_string
      t.date :birthdate
      t.integer :age
      t.references :gender, foreign_key: true
      t.string :street_address
      t.string :city
      t.references :county, foreign_key: true
      t.references :state, foreign_key: true
      t.string :postal_code
      t.string :email
      t.string :home_phone
      t.string :cell_phone
      t.boolean :send_card
      t.references :plan, foreign_key: true
      t.references :membership_fee, foreign_key: true
      t.references :role, foreign_key: true
      t.references :status, foreign_key: true
      t.date :member_since
      t.date :membership_ends
      t.text :notes

      t.timestamps
    end
  end
end
