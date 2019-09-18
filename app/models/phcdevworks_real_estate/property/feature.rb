module PhcdevworksRealEstate
  class Property::Feature < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Relationships
    has_and_belongs_to_many :listings, class_name: 'Phcreallistingspro::Property::Listing', :join_table => 'features_listings'

    # Validation for Form Fields
    validates :feature_name,
      presence: true

    # Clean URL Define
    friendly_id :phcdev_property_feature_nice_urls, use: [:slugged, :finders]

    def phcdev_property_feature_nice_urls
      [:feature_name]
    end

  end
end
