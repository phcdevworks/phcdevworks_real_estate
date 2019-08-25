require "application_system_test_case"

module PhcdevworksRealEstate
  class Property::ListingsTest < ApplicationSystemTestCase
    setup do
      @property_listing = phcdevworks_real_estate_property_listings(:one)
    end

    test "visiting the index" do
      visit property_listings_url
      assert_selector "h1", text: "Property/Listings"
    end

    test "creating a Listing" do
      visit property_listings_url
      click_on "New Property/Listing"

      fill_in "Listing area", with: @property_listing.listing_area
      fill_in "Listing bath", with: @property_listing.listing_bath
      fill_in "Listing bed", with: @property_listing.listing_bed
      fill_in "Listing description", with: @property_listing.listing_description
      fill_in "Listing energy class", with: @property_listing.listing_energy_class
      fill_in "Listing garage", with: @property_listing.listing_garage
      fill_in "Listing garage area", with: @property_listing.listing_garage_area
      fill_in "Listing leed rating", with: @property_listing.listing_leed_rating
      fill_in "Listing price", with: @property_listing.listing_price
      fill_in "Listing property area", with: @property_listing.listing_property_area
      fill_in "Listing room", with: @property_listing.listing_room
      fill_in "Listing status", with: @property_listing.listing_status
      fill_in "Listing street address", with: @property_listing.listing_street_address
      fill_in "Listing title", with: @property_listing.listing_title
      fill_in "Listing type", with: @property_listing.listing_type
      fill_in "Listing year built", with: @property_listing.listing_year_built
      click_on "Create Listing"

      assert_text "Listing was successfully created"
      click_on "Back"
    end

    test "updating a Listing" do
      visit property_listings_url
      click_on "Edit", match: :first

      fill_in "Listing area", with: @property_listing.listing_area
      fill_in "Listing bath", with: @property_listing.listing_bath
      fill_in "Listing bed", with: @property_listing.listing_bed
      fill_in "Listing description", with: @property_listing.listing_description
      fill_in "Listing energy class", with: @property_listing.listing_energy_class
      fill_in "Listing garage", with: @property_listing.listing_garage
      fill_in "Listing garage area", with: @property_listing.listing_garage_area
      fill_in "Listing leed rating", with: @property_listing.listing_leed_rating
      fill_in "Listing price", with: @property_listing.listing_price
      fill_in "Listing property area", with: @property_listing.listing_property_area
      fill_in "Listing room", with: @property_listing.listing_room
      fill_in "Listing status", with: @property_listing.listing_status
      fill_in "Listing street address", with: @property_listing.listing_street_address
      fill_in "Listing title", with: @property_listing.listing_title
      fill_in "Listing type", with: @property_listing.listing_type
      fill_in "Listing year built", with: @property_listing.listing_year_built
      click_on "Update Listing"

      assert_text "Listing was successfully updated"
      click_on "Back"
    end

    test "destroying a Listing" do
      visit property_listings_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Listing was successfully destroyed"
    end
  end
end
