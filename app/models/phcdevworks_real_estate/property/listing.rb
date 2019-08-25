module PhcdevworksRealEstate
  class Property::Listing < ApplicationRecord

    # Image Uploading
    has_one_attached :listing_upload
    has_many_attached :gallery_upload

    # Relationships
    has_and_belongs_to_many :features, class_name: 'Phcreallistingspro::Property::Feature', :join_table => 'features_listings'

    # Validation for Form Fields
    validates :listing_title,
      presence: true

    validates :listing_description,
      presence: true

    validates :listing_street_address,
      presence: true

    validates :listing_price,
      presence: true

  end
end
