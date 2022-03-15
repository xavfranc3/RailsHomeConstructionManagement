class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end
  
  protected
  
  # def after_sign_in_path_for(resource)
  #   current_user.app_admin? ? tenants_path : stored_location_for(resource)
  # end
end
