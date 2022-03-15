require 'rails_helper'

describe 'user authentication' do
  it 'allows signin with valid credentials' do
    sign_in_user(create(:user))

    expect(page).to have_content('Signed in successfully')
  end

  it 'prevents signin with invalid credentials' do
    user = create(:user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'blabla'
    click_button 'Log in'

    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'allows user to sign out' do
    sign_in_user(create(:user))

    visit root_path
    click_button 'Sign out'

    expect(page).to have_content 'You need to sign in or sign up before continuing'
  end

  def sign_in_user(user)
    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end
end
