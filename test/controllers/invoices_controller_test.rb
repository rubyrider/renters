require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { cancelled_at: @invoice.cancelled_at, client_id: @invoice.client_id, contract_id: @invoice.contract_id, due_date: @invoice.due_date, first_name: @invoice.first_name, invoicing_date: @invoice.invoicing_date, last_name: @invoice.last_name, paid_at: @invoice.paid_at, property_id: @invoice.property_id, rent_collection_id: @invoice.rent_collection_id, user_id: @invoice.user_id } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { cancelled_at: @invoice.cancelled_at, client_id: @invoice.client_id, contract_id: @invoice.contract_id, due_date: @invoice.due_date, first_name: @invoice.first_name, invoicing_date: @invoice.invoicing_date, last_name: @invoice.last_name, paid_at: @invoice.paid_at, property_id: @invoice.property_id, rent_collection_id: @invoice.rent_collection_id, user_id: @invoice.user_id } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
