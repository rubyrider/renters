require 'test_helper'

class Dashboard::CollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_collection = dashboard_collections(:one)
  end

  test "should get index" do
    get dashboard_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_collection_url
    assert_response :success
  end

  test "should create dashboard_collection" do
    assert_difference('Dashboard::Collection.count') do
      post dashboard_collections_url, params: { dashboard_collection: {  } }
    end

    assert_redirected_to dashboard_collection_url(Dashboard::Collection.last)
  end

  test "should show dashboard_collection" do
    get dashboard_collection_url(@dashboard_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_collection_url(@dashboard_collection)
    assert_response :success
  end

  test "should update dashboard_collection" do
    patch dashboard_collection_url(@dashboard_collection), params: { dashboard_collection: {  } }
    assert_redirected_to dashboard_collection_url(@dashboard_collection)
  end

  test "should destroy dashboard_collection" do
    assert_difference('Dashboard::Collection.count', -1) do
      delete dashboard_collection_url(@dashboard_collection)
    end

    assert_redirected_to dashboard_collections_url
  end
end
