class AppAdmin < User
  has_many :app_admin_tenants
  has_many :tenants, through: :app_admin_tenants
end
