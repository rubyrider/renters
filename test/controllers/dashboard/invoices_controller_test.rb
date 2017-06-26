require 'test_helper'

class Dashboard::InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_invoice = dashboard_invoices(:one)
  end

  test "should get index" do
    get dashboard_invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_invoice_url
    assert_response :success
  end

  test "should create dashboard_invoice" do
    assert_difference('Dashboard::Invoice.count') do
      post dashboard_invoices_url, params: { dashboard_invoice: {  } }
    end

    assert_redirected_to dashboard_invoice_url(Dashboard::Invoice.last)
  end

  test "should show dashboard_invoice" do
    get dashboard_invoice_url(@dashboard_invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_invoice_url(@dashboard_invoice)
    assert_response :success
  end

  test "should update dashboard_invoice" do
    patch dashboard_invoice_url(@dashboard_invoice), params: { dashboard_invoice: {  } }
    assert_redirected_to dashboard_invoice_url(@dashboard_invoice)
  end

  test "should destroy dashboard_invoice" do
    assert_difference('Dashboard::Invoice.count', -1) do
      delete dashboard_invoice_url(@dashboard_invoice)
    end

    assert_redirected_to dashboard_invoices_url
  end
end
