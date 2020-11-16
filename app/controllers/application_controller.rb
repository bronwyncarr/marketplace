class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do
    flash[:error] = "Sorry, you don't have access to that operation."
    redirect_to tasks_path
  end

  add_flash_types :error, :success
  layout :layout_for_resource

  def after_sign_in_path_for(_home)
    tasks_path
  end

  protected

  def layout_for_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def after_sign_in_path_for(_home)
    tasks_path
  end
end
