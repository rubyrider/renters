require 'test_helper'

class Dashboard::ContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_contract = dashboard_contracts(:one)
  end

  test "should get index" do
    get dashboard_contracts_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_contract_url
    assert_response :success
  end

  test "should create dashboard_contract" do
    assert_difference('Dashboard::Contract.count') do
      post dashboard_contracts_url, params: { dashboard_contract: {  } }
    end

    assert_redirected_to dashboard_contract_url(Dashboard::Contract.last)
  end

  test "should show dashboard_contract" do
    get dashboard_contract_url(@dashboard_contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_contract_url(@dashboard_contract)
    assert_response :success
  end

  test "should update dashboard_contract" do
    patch dashboard_contract_url(@dashboard_contract), params: { dashboard_contract: {  } }
    assert_redirected_to dashboard_contract_url(@dashboard_contract)
  end

  test "should destroy dashboard_contract" do
    assert_difference('Dashboard::Contract.count', -1) do
      delete dashboard_contract_url(@dashboard_contract)
    end

    assert_redirected_to dashboard_contracts_url
  end
end
