class WelcomeController < ApplicationController
  def index
    if current_user.app_admin?
      @tenants = Tenant.all
    end
  end
end
