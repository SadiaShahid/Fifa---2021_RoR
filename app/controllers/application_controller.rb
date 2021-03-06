class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  # byebug
  def default_action
    if user_signed_in?
      redirect_to root_path 
    else
      redirect_to new_user_session_path
    end 
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
end
