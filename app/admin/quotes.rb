ActiveAdmin.register Quote do
  permit_params :character, :quote
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :character, :quote
  #
  # or
  #
  # permit_params do
  #   permitted = [:character, :quote]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
