require 'rails_helper'

RSpec.describe AppAdmin, type: :model do
  describe 'validations' do
    it do
      should validate_presence_of :name
      should validate_presence_of :email
      should validate_presence_of :password
    end
  end

  describe 'associations' do
    it do
      should have_many(:tenants).through(:app_admin_tenants)
    end
  end
end
