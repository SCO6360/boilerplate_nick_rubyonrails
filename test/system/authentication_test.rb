require "application_system_test_case"

class AuthenticationTest < ApplicationSystemTestCase
  test "signing in and out" do
    user = User.take

    visit root_path
    click_on "Sign in", match: :first

    fill_in "email_address", with: user.email_address
    fill_in "password", with: "password"
    find("input[type=submit][value='Sign in']").click

    assert_button "Sign out"
    click_on "Dashboard"
    assert_text "Signed in as #{user.email_address}"

    click_on "Sign out"
    assert_text "Sign in"
  end
end
