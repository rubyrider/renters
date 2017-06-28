class Dashboard::RentCollectionsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_contract
  before_action :set_dashboard_rent_collection, only: [:show, :edit, :update, :destroy]

  # GET /dashboard/rent_collections
  # GET /dashboard/rent_collections.json
  def index
    @rent_collections = current_user.rent_collections
  end

  # GET /dashboard/rent_collections/1
  # GET /dashboard/rent_collections/1.json
  def show
  end

  # GET /dashboard/rent_collections/new
  def new
    @rent_collection = current_user.rent_collections.new
  end

  # GET /dashboard/rent_collections/1/edit
  def edit
  end

  # POST /dashboard/rent_collections
  # POST /dashboard/rent_collections.json
  def create
    @rent_collection = current_user.rent_collections.new(dashboard_rent_collection_params)

    @rent_collection.contract = @contract if @contract

    respond_to do |format|
      if @rent_collection.save
        format.html { redirect_to url_for(controller: 'dashboard/rent_collections', action: :show, contract_id: @contract, id: @rent_collection), notice: 'Rent collection was successfully created.' }
        format.json { render :show, status: :created, location: @rent_collection }
      else
        format.html { render :new }
        format.json { render json: @rent_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboard/rent_collections/1
  # PATCH/PUT /dashboard/rent_collections/1.json
  def update
    respond_to do |format|
      if @rent_collection.update(dashboard_rent_collection_params)
        format.html { redirect_to @rent_collection, notice: 'Rent collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_collection }
      else
        format.html { render :edit }
        format.json { render json: @rent_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard/rent_collections/1
  # DELETE /dashboard/rent_collections/1.json
  def destroy
    @rent_collection.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_rent_collections_url, notice: 'Rent collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_contract
    @contract = current_user.contracts.find_by(id: params[:contract_id]) if params[:contract_id].present?
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_dashboard_rent_collection
    @rent_collection = current_user.rent_collections.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def dashboard_rent_collection_params
    params.fetch(:property_rent_collection, {}).permit(:section_id, :property_id, :user_id, :created_at, :updated_at, :fee_cents, :fee_currency, :name, :clients_properties_id)
  end
end
