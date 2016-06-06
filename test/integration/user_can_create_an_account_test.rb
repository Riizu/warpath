require 'test_helper'

class UserCanCreateAnAccount < ActionDispatch::IntegrationTest
  test 'user can create account' do
    visit new_user_path
    fill_in "Username", with: "Xaeltos"
    fill_in "Password", with: "password"
    fill_in "Email", with: "xaeltos@gmail.com"
    click_button "Create Account"

    assert page.has_content?("Welcome, Xaeltos!")
  end
end
