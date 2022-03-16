Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'   
 end
  root "homes#index"
end
