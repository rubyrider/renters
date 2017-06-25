require 'test_helper'

class Dashboard::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get dashboard_welcome_dashboard_url
    assert_response :success
  end

end
