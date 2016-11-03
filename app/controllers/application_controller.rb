class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  protected
  
  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :nickname
      devise_parameter_sanitizer.for(:sign_in) << :nickname

  end
end