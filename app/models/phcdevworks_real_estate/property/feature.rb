module PhcdevworksRealEstate
  class Property::Feature < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Relationships
    has_and_belongs_to_many :listings, class_name: 'Phcreallistingspro::Property::Listing', :join_table => 'phcdevworks_real_estate_property_features_listings', :dependent => :destroy

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
