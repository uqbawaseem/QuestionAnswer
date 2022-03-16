class ApplicationController < ActionController::Base
     before_action :authenticate_user!, except: [:new, :create]
    protect_from_forgery with: :exception
     before_action :configure_permitted_parameters, if: :devise_controller?
     protected
     def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :type, :email, :password, :password_confirmation)}
          devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email])
     end

end
