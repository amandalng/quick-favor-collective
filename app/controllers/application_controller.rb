class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(user)
    about_path
  end

  def after_sign_out_path_for(user)
    root_path
  end

  def after_update_path_for(user)
    user_path(current_user)
  end

  protected


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :oneliner, :funfact, :city, :industry, :admin, :status, :linkedin, :referrer, :photo])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :oneliner, :funfact, :city, :industry, :admin, :status, :linkedin, :photo])
    end
end
