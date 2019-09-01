class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user, :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def after_sign_in_path_for(resource)
    slide_posts_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
end
