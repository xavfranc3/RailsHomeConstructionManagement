require 'rails_helper'

describe 'account creation' do
  it 'allows user to create an account' do
    visit root_path
    click_link 'Create Account'

    fill_in 'Name', with: 'toto'
    fill_in 'Email', with: 'toto@toto.com'
    fill_in 'Password', with: 'Password123'
    fill_in 'Password confirmation', with: 'Password123'
    fill_in 'Subdomain', with: 'test_subdomain'
    click_button 'Create Account'

    expect(page).to have_content('Signed up successfully')
  end
end

