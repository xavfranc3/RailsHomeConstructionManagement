require 'rails_helper'

describe 'tenants creation' do
  it 'allows the creation of a new tenant' do
    user = create(:app_admin)
    login_as(user, scope: :user)
    visit tenants_path
    click_link 'New Tenant'
    fill_in 'Name', with: 'TestTenant'
    click_button 'Create Tenant'

    expect(page).to have_content('New tenant created successfully')
  end
end
