Rails.application.routes.draw do
  devise_for :admin_users
  devise_scope :admin_user do  
    get '/admin_users/sign_out' => 'devise/sessions#destroy'     
 end
  root "homes#index"
end
