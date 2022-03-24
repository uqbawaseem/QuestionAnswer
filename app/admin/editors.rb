ActiveAdmin.register Editor do
  menu parent: "admins"
  permit_params :username, :email, :password, :password_confirmation
  index do
    #selectable_column
    id_column
    column :username
    column :email
    actions
  end
  filter :username
  filter :email
  form do |f|
    f.inputs do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  show do
    h3 current_user.username.capitalize
    attributes_table do
      row :username
      row :email
    end
  end
  controller do
    def update
      if params[:editor][:password].blank? && params[:editor][:password_confirmation].blank?
        params[:editor].delete("password")
        params[:editor].delete("password_confirmation")
      end
      super
    end
  end
end
