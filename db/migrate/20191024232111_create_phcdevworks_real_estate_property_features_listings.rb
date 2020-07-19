class CreatePhcdevworksRealEstatePropertyFeaturesListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_features_listings do |t|

      t.integer :feature_id
      t.integer :listing_id

    end
  end
end
