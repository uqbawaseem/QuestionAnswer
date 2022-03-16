ActiveAdmin.register Admin do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password, :password_confirmation, :username
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :username, :type, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  controller do
    def update
      if params[:admin][:password].blank? && params[:admin][:password_confirmation].blank?
        params[:admin].delete("password")
        params[:admin].delete("password_confirmation")
      end
      super
    end
  end
  
end
