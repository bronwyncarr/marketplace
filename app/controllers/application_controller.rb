class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  # rescue_from CanCan::AccessDenied do |exception|
  #   flash[:authorization_error] = 'You are not authorized to complete that action'
  #   redirect_to tasks_path
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def after_sign_in_path_for(home)
    tasks_path
  end

end