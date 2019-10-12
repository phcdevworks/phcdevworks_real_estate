# This migration comes from phcdevworks_real_estate (originally 20180918034641)
class CreateJoinTableFeaturesListings < ActiveRecord::Migration[6.0]
  def change
    create_join_table :features, :listings do |t|
      # t.index [:feature_id, :listing_id]
      # t.index [:listing_id, :feature_id]
    end
  end
end