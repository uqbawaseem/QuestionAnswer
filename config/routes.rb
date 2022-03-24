Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'   
 end
  root "homes#index"
  match 'questions/filter_form' => 'questions#question_filter_form', as: :question_filter_form, via: [:get, :post]
  get 'add_new_fields', to: 'questions#add_new_fields'
  get 'questions/print_page', to: 'questions#print_page', as: :question_print_page
end
