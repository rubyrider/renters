require 'test_helper'

class Dashboard::RentCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_rent_collection = dashboard_rent_collections(:one)
  end

  test "should get index" do
    get dashboard_rent_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_rent_collection_url
    assert_response :success
  end

  test "should create dashboard_rent_collection" do
    assert_difference('Dashboard::RentCollection.count') do
      post dashboard_rent_collections_url, params: { dashboard_rent_collection: {  } }
    end

    assert_redirected_to dashboard_rent_collection_url(Dashboard::RentCollection.last)
  end

  test "should show dashboard_rent_collection" do
    get dashboard_rent_collection_url(@dashboard_rent_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_rent_collection_url(@dashboard_rent_collection)
    assert_response :success
  end

  test "should update dashboard_rent_collection" do
    patch dashboard_rent_collection_url(@dashboard_rent_collection), params: { dashboard_rent_collection: {  } }
    assert_redirected_to dashboard_rent_collection_url(@dashboard_rent_collection)
  end

  test "should destroy dashboard_rent_collection" do
    assert_difference('Dashboard::RentCollection.count', -1) do
      delete dashboard_rent_collection_url(@dashboard_rent_collection)
    end

    assert_redirected_to dashboard_rent_collections_url
  end
end
