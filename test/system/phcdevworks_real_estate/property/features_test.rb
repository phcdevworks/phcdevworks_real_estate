require "application_system_test_case"

module PhcdevworksRealEstate
  class Property::FeaturesTest < ApplicationSystemTestCase
    setup do
      @property_feature = phcdevworks_real_estate_property_features(:one)
    end

    test "visiting the index" do
      visit property_features_url
      assert_selector "h1", text: "Property/Features"
    end

    test "creating a Feature" do
      visit property_features_url
      click_on "New Property/Feature"

      click_on "Create Feature"

      assert_text "Feature was successfully created"
      click_on "Back"
    end

    test "updating a Feature" do
      visit property_features_url
      click_on "Edit", match: :first

      click_on "Update Feature"

      assert_text "Feature was successfully updated"
      click_on "Back"
    end

    test "destroying a Feature" do
      visit property_features_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Feature was successfully destroyed"
    end
  end
end
