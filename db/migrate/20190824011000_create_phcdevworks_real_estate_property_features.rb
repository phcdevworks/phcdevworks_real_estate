class CreatePhcdevworksRealEstatePropertyFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_property_features do |t|

      t.string :property_feature_name

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
