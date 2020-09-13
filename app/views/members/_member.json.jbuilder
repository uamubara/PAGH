json.extract! member, :id, :member_no, :title, :first_name, :middle_initial, :last_name_string, :birthdate, :age, :gender_id, :street_address, :city, :county_id, :state_id, :postal_code, :email, :home_phone, :cell_phone, :send_card, :plan_id, :membership_fee_id, :role_id, :status_id, :member_since, :membership_ends, :notes, :created_at, :updated_at
json.url member_url(member, format: :json)
