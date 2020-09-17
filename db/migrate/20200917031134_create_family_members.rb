class CreateFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_members do |t|
      t.references :member, foreign_key: true
      t.references :relationship, foreign_key: true
      t.string :title
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.date :birthdate
      t.integer :age
      t.references :gender, foreign_key: true
      t.string :email
      t.string :home_phone
      t.string :cell_phone

      t.timestamps
    end
  end
end
