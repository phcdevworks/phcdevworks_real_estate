# This migration comes from phcdevworks_real_estate (originally 20190824011000)
class CreatePhcdevworksRealEstatePropertyFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_property_features do |t|
    
      t.string :feature_name

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps
    
    end
  end
end