# This migration comes from phcdevworks_real_estate (originally 20190824010811)
class CreatePhcdevworksRealEstatePropertyListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_property_listings do |t|

      t.string :property_listing_title
      t.text :property_listing_description
      t.string :property_listing_street_address
      t.string :property_listing_price

      t.string :property_listing_area
      t.string :property_listing_property_area
      t.string :property_listing_garage_area

      t.string :property_listing_room
      t.string :property_listing_bed
      t.string :property_listing_bath
      t.string :property_listing_garage

      t.string :property_listing_type
      t.string :property_listing_status

      t.string :property_listing_year_built
      t.string :property_listing_energy_class
      t.string :property_listing_leed_rating

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
