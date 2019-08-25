# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_24_011000) do

  create_table "features_listings", id: false, force: :cascade do |t|
    t.integer "feature_id", null: false
    t.integer "listing_id", null: false
  end

  create_table "phcdevworks_real_estate_property_features", force: :cascade do |t|
    t.string "feature_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_real_estate_property_listings", force: :cascade do |t|
    t.string "listing_title"
    t.text "listing_description"
    t.string "listing_street_address"
    t.string "listing_price"
    t.string "listing_area"
    t.string "listing_property_area"
    t.string "listing_garage_area"
    t.string "listing_room"
    t.string "listing_bed"
    t.string "listing_bath"
    t.string "listing_garage"
    t.string "listing_type"
    t.string "listing_status"
    t.string "listing_year_built"
    t.string "listing_energy_class"
    t.string "listing_leed_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
