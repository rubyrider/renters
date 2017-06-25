require 'test_helper'

class Property::CollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_collection = property_collections(:one)
  end

  test "should get index" do
    get property_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_property_collection_url
    assert_response :success
  end

  test "should create property_collection" do
    assert_difference('Property::Collection.count') do
      post property_collections_url, params: { property_collection: { amount: @property_collection.amount, property_id: @property_collection.property_id, section_id: @property_collection.section_id, user_id: @property_collection.user_id } }
    end

    assert_redirected_to property_collection_url(Property::Collection.last)
  end

  test "should show property_collection" do
    get property_collection_url(@property_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_collection_url(@property_collection)
    assert_response :success
  end

  test "should update property_collection" do
    patch property_collection_url(@property_collection), params: { property_collection: { amount: @property_collection.amount, property_id: @property_collection.property_id, section_id: @property_collection.section_id, user_id: @property_collection.user_id } }
    assert_redirected_to property_collection_url(@property_collection)
  end

  test "should destroy property_collection" do
    assert_difference('Property::Collection.count', -1) do
      delete property_collection_url(@property_collection)
    end

    assert_redirected_to property_collections_url
  end
end
