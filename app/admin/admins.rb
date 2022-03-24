ActiveAdmin.register Admin do
  menu priority: 1
  permit_params :email, :password, :password_confirmation, :username
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
    column :created_at
    actions
  end
  filter :username
  filter :email
  filter :created_at
  show do
    h3 current_user.username.capitalize
    attributes_table do
      row :username
      row :email
    end
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
