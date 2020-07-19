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
    validates :listing_title,
      presence: true

    validates :listing_description,
      presence: true

    validates :listing_street_address,
      presence: true

    validates :listing_price,
      presence: true

    # Clean URL Define
    friendly_id :phcdev_property_listing_nice_urls, use: [:slugged, :finders]

    def phcdev_property_listing_nice_urls
      [:listing_title]
    end

  end
end
