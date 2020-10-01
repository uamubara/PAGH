ActiveAdmin.register FamilyMember do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :member_id, :relationship_id, :title, :first_name, :middle_initial, :last_name, :birthdate, :age, :gender_id, :email, :home_phone, :cell_phone

   permit_params do
    permitted = [:member_id, :relationship_id, :title, :first_name, :middle_initial, :last_name, :birthdate, :age, :gender_id, :email, :home_phone, :cell_phone]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
   end
  
end
