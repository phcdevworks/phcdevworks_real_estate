class AddSeoToPhcdevworksRealEstatePropertyListings < ActiveRecord::Migration[6.0]
  def change
  
    add_column :phcdevworks_real_estate_property_listings, :seo_title, :string
    add_column :phcdevworks_real_estate_property_listings, :seo_description , :string

    add_column :phcdevworks_real_estate_property_listings, :seo_open_graph_type, :string
    add_column :phcdevworks_real_estate_property_listings, :seo_open_graph_url, :string
    add_column :phcdevworks_real_estate_property_listings, :seo_open_graph_title, :string
    add_column :phcdevworks_real_estate_property_listings, :seo_open_graph_description, :string

    add_column :phcdevworks_real_estate_property_listings, :seo_twitter_type, :string
    add_column :phcdevworks_real_estate_property_listings, :seo_twitter_url, :string
    add_column :phcdevworks_real_estate_property_listings, :seo_twitter_title, :string
    add_column :phcdevworks_real_estate_property_listings, :seo_twitter_description, :string

  end
end
