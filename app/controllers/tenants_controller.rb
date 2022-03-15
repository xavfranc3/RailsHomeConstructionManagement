class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
  end

  def new
    @tenant = Tenant.new
  end

  def create
    @tenant = current_user.tenants.build(tenant_params)
    if @tenant.save
      redirect_to tenants_path, notice: 'New tenant created successfully'
    else
      render new
    end
  end

  private

  def tenant_params
    params.require(:tenant).permit(:name)
  end
end
