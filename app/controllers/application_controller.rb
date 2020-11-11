class ApplicationController < ActionController::Base
  include Pundit

  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def admin?
    current_user && current_user.admin?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def layout_by_resource
    if user_signed_in? && current_user.admin?
      'application_admin'
    else
      'application'
    end
  end

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to(request.referrer || root_path)
  end

  def after_sign_in_path_for(_resource)
    if current_user.admin?
      dashboard_path
    else
      root_path
    end
  end

  def after_sign_up_path_for(_resource)
    if current_user.admin?
      dashboard_path
    else
      root_path
    end
  end
end
