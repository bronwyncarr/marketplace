class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  # Alert message to user if they are not authorised by cancan base on roles
  rescue_from CanCan::AccessDenied do
    flash[:error] = "Sorry, you don't have access to that operation."
    redirect_to tasks_path
  end

  add_flash_types :error, :success

  # As below, Device 1/2 screen layout otherwise regular sidebar or nav layout.
  # Home page is overwrited on home controller
  layout :layout_for_resource

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

  # After signing in users will be redirected to the tasks#index
  def after_sign_in_path_for(_home)
    tasks_path
  end
end
