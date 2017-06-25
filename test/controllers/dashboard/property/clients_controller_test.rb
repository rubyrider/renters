require 'test_helper'

class Dashboard::Property::ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_property_client = dashboard_property_clients(:one)
  end

  test "should get index" do
    get dashboard_property_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_property_client_url
    assert_response :success
  end

  test "should create dashboard_property_client" do
    assert_difference('Dashboard::Property::Client.count') do
      post dashboard_property_clients_url, params: { dashboard_property_client: {  } }
    end

    assert_redirected_to dashboard_property_client_url(Dashboard::Property::Client.last)
  end

  test "should show dashboard_property_client" do
    get dashboard_property_client_url(@dashboard_property_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_property_client_url(@dashboard_property_client)
    assert_response :success
  end

  test "should update dashboard_property_client" do
    patch dashboard_property_client_url(@dashboard_property_client), params: { dashboard_property_client: {  } }
    assert_redirected_to dashboard_property_client_url(@dashboard_property_client)
  end

  test "should destroy dashboard_property_client" do
    assert_difference('Dashboard::Property::Client.count', -1) do
      delete dashboard_property_client_url(@dashboard_property_client)
    end

    assert_redirected_to dashboard_property_clients_url
  end
end
