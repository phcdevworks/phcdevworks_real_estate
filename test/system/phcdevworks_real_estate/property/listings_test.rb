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

      click_on "Create Listing"

      assert_text "Listing was successfully created"
      click_on "Back"
    end

    test "updating a Listing" do
      visit property_listings_url
      click_on "Edit", match: :first

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
