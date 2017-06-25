require 'test_helper'

class ClientPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_property = client_properties(:one)
  end

  test "should get index" do
    get client_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_client_property_url
    assert_response :success
  end

  test "should create client_property" do
    assert_difference('ClientProperty.count') do
      post client_properties_url, params: { client_property: {  } }
    end

    assert_redirected_to client_property_url(ClientProperty.last)
  end

  test "should show client_property" do
    get client_property_url(@client_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_property_url(@client_property)
    assert_response :success
  end

  test "should update client_property" do
    patch client_property_url(@client_property), params: { client_property: {  } }
    assert_redirected_to client_property_url(@client_property)
  end

  test "should destroy client_property" do
    assert_difference('ClientProperty.count', -1) do
      delete client_property_url(@client_property)
    end

    assert_redirected_to client_properties_url
  end
end
