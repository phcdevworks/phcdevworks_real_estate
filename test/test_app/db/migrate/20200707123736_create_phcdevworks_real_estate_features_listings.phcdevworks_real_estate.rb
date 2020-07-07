# This migration comes from phcdevworks_real_estate (originally 20191024232111)
class CreatePhcdevworksRealEstateFeaturesListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_features_listings do |t|
      t.integer :feature_id
      t.integer :listing_id
    end
  end
end
