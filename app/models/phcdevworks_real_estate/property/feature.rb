module PhcdevworksRealEstate
  class Property::Feature < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Relationships
    has_and_belongs_to_many :listings, class_name: 'Phcreallistingspro::Property::Listing', :join_table => 'phcdevworks_real_estate_property_features_listings', :dependent => :destroy

    # Validation for Form Fields
    validates :property_feature_name,
      presence: true

    # Clean URL Define
    friendly_id :property_feature_nice_urls, use: [:slugged, :finders]

    def property_feature_nice_urls
      [:property_feature_name]
    end

  end
end
