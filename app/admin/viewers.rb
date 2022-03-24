ActiveAdmin.register Viewer do
  menu parent: "admins"
   permit_params :username, :email, :password, :password_confirmation
  form do |f|
    f.inputs do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  index do
    #selectable_column
    id_column
    column :username
    column :email
    actions
  end
  filter :username
  filter :email
  show do
    h3 current_user.username.capitalize
    attributes_table do
      row :username
      row :email
    end
  end
  controller do
    def update
      if params[:viewer][:password].blank? && params[:viewer][:password_confirmation].blank?
        params[:viewer].delete("password")
        params[:viewer].delete("password_confirmation")
      end
      super
    end
  end
end
