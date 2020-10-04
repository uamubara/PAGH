ActiveAdmin.register Member do
  scope :active_members
  scope :inactive_expired_membership
  scope :send_card
  scope :do_not_send_card
  scope :paid
  scope :payment_required
  scope :voter_list
  scope :lifetime_members
  scope :three_year_members
  scope :yearly_members
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment


   permit_params :member_no, :title, :first_name, :middle_initial, :last_name_string, :birthdate, :age, :gender_id, :street_address, :city, :county_id, :state_id, :postal_code, :email, :home_phone, :cell_phone, :send_card, :plan_id, :membership_fee_id, :role_id, :status_id, :member_since, :membership_ends, :notes

   permit_params do
     permitted = [:member_no, :title, :first_name, :middle_initial, :last_name_string, :birthdate, :age, :gender_id, :street_address, :city, :county_id, :state_id, :postal_code, :email, :home_phone, :cell_phone, :send_card, :plan_id, :membership_fee_id, :role_id, :status_id, :member_since, :membership_ends, :notes]
     permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
end
