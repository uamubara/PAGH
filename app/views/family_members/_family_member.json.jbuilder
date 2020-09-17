json.extract! family_member, :id, :member_id, :relationship_id, :title, :first_name, :middle_initial, :last_name, :birthdate, :age, :gender_id, :email, :home_phone, :cell_phone, :created_at, :updated_at
json.url family_member_url(family_member, format: :json)
