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
        post property_listings_url, params: { property_listing: { listing_area: @property_listing.listing_area, listing_bath: @property_listing.listing_bath, listing_bed: @property_listing.listing_bed, listing_description: @property_listing.listing_description, listing_energy_class: @property_listing.listing_energy_class, listing_garage: @property_listing.listing_garage, listing_garage_area: @property_listing.listing_garage_area, listing_leed_rating: @property_listing.listing_leed_rating, listing_price: @property_listing.listing_price, listing_property_area: @property_listing.listing_property_area, listing_room: @property_listing.listing_room, listing_status: @property_listing.listing_status, listing_street_address: @property_listing.listing_street_address, listing_title: @property_listing.listing_title, listing_type: @property_listing.listing_type, listing_year_built: @property_listing.listing_year_built } }
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
      patch property_listing_url(@property_listing), params: { property_listing: { listing_area: @property_listing.listing_area, listing_bath: @property_listing.listing_bath, listing_bed: @property_listing.listing_bed, listing_description: @property_listing.listing_description, listing_energy_class: @property_listing.listing_energy_class, listing_garage: @property_listing.listing_garage, listing_garage_area: @property_listing.listing_garage_area, listing_leed_rating: @property_listing.listing_leed_rating, listing_price: @property_listing.listing_price, listing_property_area: @property_listing.listing_property_area, listing_room: @property_listing.listing_room, listing_status: @property_listing.listing_status, listing_street_address: @property_listing.listing_street_address, listing_title: @property_listing.listing_title, listing_type: @property_listing.listing_type, listing_year_built: @property_listing.listing_year_built } }
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
