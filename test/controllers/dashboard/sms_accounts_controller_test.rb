require 'test_helper'

class Dashboard::SmsAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_sms_account = dashboard_sms_accounts(:one)
  end

  test "should get index" do
    get dashboard_sms_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_sms_account_url
    assert_response :success
  end

  test "should create dashboard_sms_account" do
    assert_difference('Dashboard::SmsAccount.count') do
      post dashboard_sms_accounts_url, params: { dashboard_sms_account: {  } }
    end

    assert_redirected_to dashboard_sms_account_url(Dashboard::SmsAccount.last)
  end

  test "should show dashboard_sms_account" do
    get dashboard_sms_account_url(@dashboard_sms_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_sms_account_url(@dashboard_sms_account)
    assert_response :success
  end

  test "should update dashboard_sms_account" do
    patch dashboard_sms_account_url(@dashboard_sms_account), params: { dashboard_sms_account: {  } }
    assert_redirected_to dashboard_sms_account_url(@dashboard_sms_account)
  end

  test "should destroy dashboard_sms_account" do
    assert_difference('Dashboard::SmsAccount.count', -1) do
      delete dashboard_sms_account_url(@dashboard_sms_account)
    end

    assert_redirected_to dashboard_sms_accounts_url
  end
end
