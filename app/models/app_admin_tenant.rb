class AppAdminTenant < ApplicationRecord
  belongs_to :app_admin
  belongs_to :tenant
end
