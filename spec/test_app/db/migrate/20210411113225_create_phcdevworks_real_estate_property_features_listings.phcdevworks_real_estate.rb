# This migration comes from phcdevworks_real_estate (originally 20191024232111)
class CreatePhcdevworksRealEstatePropertyFeaturesListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_property_features_listings do |t|

      t.integer :feature_id
      t.integer :listing_id

    end
  end
end
