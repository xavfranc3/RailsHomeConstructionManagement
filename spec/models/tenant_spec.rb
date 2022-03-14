require 'rails_helper'

RSpec.describe Tenant, type: :model do
  describe 'validations' do
    it do
      should validate_presence_of :name
    end
  end

  describe 'Associations' do
    it do
      should have_many(:app_admins).through(:app_admin_tenants)
    end
  end
end
