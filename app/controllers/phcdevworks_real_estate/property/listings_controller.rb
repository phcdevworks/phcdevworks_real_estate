require_dependency "phcdevworks_real_estate/application_controller"

module PhcdevworksRealEstate
  class Property::ListingsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_property_listing, only: [:show, :edit, :update, :destroy]

    # GET /property/listings
    def index
      @property_listings = Property::Listing.all
    end

    # GET /property/listings/1
    def show
      @property_listing = Property::Listing.friendly.find(params[:id])
    end

    # GET /property/listings/new
    def new
      @property_listing = Property::Listing.new
    end

    # GET /property/listings/1/edit
    def edit
    end

    # POST /property/listings
    def create
      @property_listing = Property::Listing.new(property_listing_params)
      @property_listing.user_id = current_user.id
      @property_listing.org_id = current_user.org_id
      respond_to do |format|
        if @property_listing.save
          format.html { redirect_to property_listings_path, :flash => { :success => 'Property Listing has been Added.' }}
          format.json { render :show, status: :created, location: @property_listing }
        else
          format.html { render :new }
          format.json { render json: @property_listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /property/listings/1
    def update
      respond_to do |format|
        if @property_listing.update(property_listing_params)
          format.html { redirect_to property_listings_path, :flash => { :notice => 'Property Listing has been Updated.' }}
          format.json { render :show, status: :ok, location: @property_listing }
        else
          format.html { render :edit }
          format.json { render json: @property_listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /property/listings/1
    def destroy
      @property_listing.destroy
      respond_to do |format|
        format.html { redirect_to property_listings_path, :flash => { :error => 'Property Listing has been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Callbacks
    def set_property_listing
      @property_listing = Property::Listing.friendly.find(params[:id])
    end

    # Whitelist
    def property_listing_params
      params.require(:property_listing).permit(:listing_title, :listing_description, :listing_street_address, :listing_price, :listing_area, :listing_property_area, :listing_garage_area, :listing_room, :listing_bed,  :listing_bath, :listing_garage, :listing_type, :listing_status, :listing_year_built, :listing_energy_class, :listing_leed_rating, :listing_upload, :user_id, :org_id, gallery_upload: [], feature_ids: [])
    end

  end
end
