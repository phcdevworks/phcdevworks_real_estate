require_dependency "phcdevworks_real_estate/application_controller"

module PhcdevworksRealEstate
  class Property::FeaturesController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_property_feature, only: [:show, :edit, :update, :destroy]

    # GET /property/features
    def index
      @property_features = Property::Feature.all
    end

    # GET /property/features/1
    def show
    end

    # GET /property/features/new
    def new
      @property_feature = Property::Feature.new
    end

    # GET /property/features/1/edit
    def edit
    end

    # POST /property/features
    def create
      @property_feature = Property::Feature.new(property_feature_params)
      @property_feature.user_id = current_user.id
      @property_feature.org_id = current_user.org_id
      respond_to do |format|
        if @property_feature.save
          format.html { redirect_to property_features_path, :flash => { :success => 'Author has been Added.' }}
          format.json { render :show, status: :created, location: @property_feature }
        else
          format.html { render :new }
          format.json { render json: @property_feature.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /property/features/1
    def update
      respond_to do |format|
        if @property_feature.update(property_feature_params)
          format.html { redirect_to property_features_path, :flash => { :notice => 'Property Feature has been Updated.' }}
          format.json { render :show, status: :ok, location: @property_feature }
        else
          format.html { render :edit }
          format.json { render json: @property_feature.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /property/features/1
    def destroy
      @property_feature.destroy
      respond_to do |format|
        format.html { redirect_to property_features_path, :flash => { :error => 'Category and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Callbacks
    def set_property_feature
      @property_feature = Property::Feature.find(params[:id])
    end

    # Whitelist
    def property_feature_params
      params.require(:property_feature).permit(:feature_name)
    end

  end
end
