require 'test_helper'

class UserCanLoginTest < ActionDispatch::IntegrationTest
  test "existing user can login" do
    login_user

    assert page.has_content?("Welcome, xaeltos!")
    assert page.has_content?("Logout")
  end

  test "guest cannot login" do
    visit login_path
    fill_in "Username", with: "xaeltos"
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Invalid. Try Again.")
    assert page.has_content?("Login")
  end

  test "registered user cannot login with wrong password" do
    user = User.create(username: "xaeltos",
                       password: "password")

    visit login_path
    fill_in "Username", with: "xaeltos"
    fill_in "Password", with: "notmypassword"
    click_button "Login"

    assert page.has_content?("Invalid. Try Again.")
    assert page.has_content?("Login")
  end

  test "authenticated user can logout" do
    login_user

    assert page.has_content?("Welcome, xaeltos!")

    click_link "Logout"

    assert page.has_content?("Goodbye!")
    assert page.has_content?("Login")
  end

  def login_user
    User.create(username: "xaeltos",
                password: "password",
                email: "xaeltos@gmail.com")

    visit login_path
    fill_in "Username", with: "xaeltos"
    fill_in "Password", with: "password"
    click_button "Login"
  end
end
