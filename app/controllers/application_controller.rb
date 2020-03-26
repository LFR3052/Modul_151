class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_patameters, if: :devise_controller?
  protected

  def configure_permitted_patameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :bio, :website])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
