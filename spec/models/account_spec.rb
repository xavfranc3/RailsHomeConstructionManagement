require 'rails_helper'

RSpec.describe Account, type: :model do
  describe 'validations' do
    it do
      should validate_presence_of :subdomain
      should validate_presence_of :owner
      should validate_uniqueness_of(:subdomain).case_insensitive
      should allow_value('toto').for(:subdomain)
      should allow_value('test').for(:subdomain)
      should_not allow_value('www').for(:subdomain)
      should_not allow_value('WWW').for(:subdomain)
      should_not allow_value('.test').for(:subdomain)
      should_not allow_value('test/').for(:subdomain)
    end

    it 'should validate case insensitive uniqueness' do
      create(:account, subdomain: 'Test')
      expect(build(:account, subdomain: 'test')).to_not be_valid
    end
  end

  describe 'associations' do
    it do
      should belong_to :owner
    end
  end
end
