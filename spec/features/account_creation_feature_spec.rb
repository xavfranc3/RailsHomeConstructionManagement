require 'rails_helper'

describe 'account creation' do
  it 'allows super admin to create an account' do
    visit root_path
    click_link 'Sign In'
    sign_in(create(:user))

    click_link 'Create Account'

    fill_in_account_details
    click_button 'Create Account'

    expect(page).to have_content('Signed up successfully')
  end

  it 'does not allow admin to create an account' do
    visit root_path
    click_link 'Sign In'
    user = create(:user, role: 'admin')
    sign_in(user)

    expect(page).not_to have_content('Create Account')
    end

  it 'does not allow staff to create an account' do
    visit root_path
    click_link 'Sign In'
    user = create(:user, role: 'staff')
    sign_in(user)

    expect(page).not_to have_content('Create Account')
    end

  it 'does not allow client to create an account' do
    visit root_path
    click_link 'Sign In'
    user = create(:user, role: 'client')
    sign_in(user)

    expect(page).not_to have_content('Create Account')
  end

  private

  def sign_in(user)
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  def fill_in_account_details
    fill_in 'Name', with: 'toto'
    fill_in 'Email', with: 'toto@toto.com'
    fill_in 'Password', with: 'Password123', match: :prefer_exact
    fill_in 'Password confirmation', with: 'Password123', match: :prefer_exact
    fill_in 'Role', with: 'admin'
    fill_in 'Subdomain', with: 'test_subdomain'
  end
end

