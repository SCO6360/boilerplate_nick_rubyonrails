require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "landing page is public" do
    get root_path
    assert_response :success
  end
end
