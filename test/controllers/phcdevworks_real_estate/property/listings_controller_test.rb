require 'test_helper'

module PhcdevworksRealEstate
  class Property::ListingsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @property_listing = phcdevworks_real_estate_property_listings(:one)
    end

    test "should get index" do
      get property_listings_url
      assert_response :success
    end

    test "should get new" do
      get new_property_listing_url
      assert_response :success
    end

    test "should create property_listing" do
      assert_difference('Property::Listing.count') do
        post property_listings_url, params: { property_listing: {  } }
      end

      assert_redirected_to property_listing_url(Property::Listing.last)
    end

    test "should show property_listing" do
      get property_listing_url(@property_listing)
      assert_response :success
    end

    test "should get edit" do
      get edit_property_listing_url(@property_listing)
      assert_response :success
    end

    test "should update property_listing" do
      patch property_listing_url(@property_listing), params: { property_listing: {  } }
      assert_redirected_to property_listing_url(@property_listing)
    end

    test "should destroy property_listing" do
      assert_difference('Property::Listing.count', -1) do
        delete property_listing_url(@property_listing)
      end

      assert_redirected_to property_listings_url
    end
  end
end
