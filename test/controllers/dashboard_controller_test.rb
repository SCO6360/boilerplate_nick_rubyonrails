require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "redirects to sign in when signed out" do
    get dashboard_path
    assert_redirected_to new_session_path
  end

  test "shows dashboard when signed in" do
    sign_in_as User.take
    get dashboard_path
    assert_response :success
  end
end
