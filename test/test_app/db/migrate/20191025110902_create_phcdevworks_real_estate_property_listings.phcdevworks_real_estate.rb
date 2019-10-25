# This migration comes from phcdevworks_real_estate (originally 20190824010811)
class CreatePhcdevworksRealEstatePropertyListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_real_estate_property_listings do |t|

      t.string :listing_title
      t.text :listing_description
      t.string :listing_street_address
      t.string :listing_price

      t.string :listing_area
      t.string :listing_property_area
      t.string :listing_garage_area

      t.string :listing_room
      t.string :listing_bed
      t.string :listing_bath
      t.string :listing_garage

      t.string :listing_type
      t.string :listing_status

      t.string :listing_year_built
      t.string :listing_energy_class
      t.string :listing_leed_rating

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
