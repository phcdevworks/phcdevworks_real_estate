module PhcdevworksRealEstate
  class Property::Feature < ApplicationRecord

    # Relationships
    has_and_belongs_to_many :listings, class_name: 'Phcreallistingspro::Property::Listing', :join_table => 'features_listings'

    # Validation for Form Fields
    validates :feature_name,
      presence: true

  end
end
