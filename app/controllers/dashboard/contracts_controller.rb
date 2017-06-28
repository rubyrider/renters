module Dashboard
  class ContractsController < ApplicationController
    before_action :authenticate_user!

    before_action :set_dashboard_contract, only: [:show, :edit, :update, :destroy]

    # GET /dashboard/contracts
    # GET /dashboard/contracts.json
    def index
      @contracts = current_user.contracts
    end

    # GET /dashboard/contracts/1
    # GET /dashboard/contracts/1.json
    def show
    end

    # GET /dashboard/contracts/new
    def new
      @contract = current_user.contracts.new
    end

    # GET /dashboard/contracts/1/edit
    def edit
    end

    # POST /dashboard/contracts
    # POST /dashboard/contracts.json
    def create
      @contract = current_user.contracts.new(dashboard_contract_params)

      respond_to do |format|
        if @contract.save
          format.html { redirect_to [:dashboard, @contract], notice: 'Contract was successfully created.' }
          format.json { render :show, status: :created, location: @dashboard_contract }
        else
          format.html { render :new }
          format.json { render json: @contract.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /dashboard/contracts/1
    # PATCH/PUT /dashboard/contracts/1.json
    def update
      respond_to do |format|
        if @contract.update(dashboard_contract_params)
          format.html { redirect_to [:dashboard, @contract], notice: 'Contract was successfully updated.' }
          format.json { render :show, status: :ok, location: @contract }
        else
          format.html { render :edit }
          format.json { render json: @contract.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /dashboard/contracts/1
    # DELETE /dashboard/contracts/1.json
    def destroy
      @contract.destroy
      respond_to do |format|
        format.html { redirect_to dashboard_contracts_url, notice: 'Contract was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_contract
      @contract = current_user.contracts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashboard_contract_params
      params.fetch(:contract, {}).permit(:client_id, :property_id, :created_at,
                                         :updated_at, :unit_name, :contract_period,
                                         :user_id, :start_date, :end_date)
    end
  end
end
