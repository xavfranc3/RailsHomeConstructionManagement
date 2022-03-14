class Tenant < ApplicationRecord
  has_many :app_admin_tenants
  has_many :app_admins, through: :app_admin_tenants

  validates :name, presence: true
end
