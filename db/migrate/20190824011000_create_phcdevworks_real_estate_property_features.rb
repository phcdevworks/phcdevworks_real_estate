class CreatePhcdevworksRealEstatePropertyFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_property_features do |t|
      t.string :feature_name

      t.timestamps
    end
  end
end
