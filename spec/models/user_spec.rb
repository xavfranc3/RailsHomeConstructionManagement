require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it do
      should validate_presence_of :name
      should validate_presence_of :email
      should validate_presence_of :password
      should validate_presence_of :role
    end
  end

  describe 'associations' do

  end
end
