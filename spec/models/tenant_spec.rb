require 'rails_helper'

RSpec.describe Tenant, type: :model do
  describe 'Tenant Validations' do
    it do
      should validate_presence_of :name
    end
  end

  describe 'Tenant Associations' do
    it do
      should belong_to :creator
    end
  end
end
