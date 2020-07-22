module PhcdevworksRealEstate
  class Property::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Image Uploading
    has_one_attached :listing_upload
    has_many_attached :gallery_upload

    # Relationships
    has_and_belongs_to_many :features, class_name: 'Phcreallistingspro::Property::Feature', :join_table => 'phcdevworks_real_estate_property_features_listings', :dependent => :destroy

    # Validation for Form Fields
    validates :property_listing_title,
      presence: true

    validates :property_listing_description,
      presence: true

    validates :property_listing_street_address,
      presence: true

    validates :property_listing_price,
      presence: true

    # Clean URL Define
    friendly_id :property_listing_nice_urls, use: [:slugged, :finders]

    def property_listing_nice_urls
      [:property_listing_title]
    end

  end
end
