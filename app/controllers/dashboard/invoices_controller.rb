module Dashboard
  class InvoicesController < ApplicationController
    before_action :set_dashboard_invoice, only: [:show, :edit, :update, :destroy]

    # GET /dashboard/invoices
    # GET /dashboard/invoices.json
    def index
      @invoices = current_user.invoices
    end

    # GET /dashboard/invoices/1
    # GET /dashboard/invoices/1.json
    def show
    end

    # GET /dashboard/invoices/new
    def new
      @invoice = current_user.invoices.new
    end

    # GET /dashboard/invoices/1/edit
    def edit
    end

    # POST /dashboard/invoices
    # POST /dashboard/invoices.json
    def create
      @invoice = current_user.invoices.new(dashboard_invoice_params)

      respond_to do |format|
        if @invoice.save
          format.html { redirect_to [:dashboard, @invoice]  , notice: 'Invoice was successfully created.' }
          format.json { render :show, status: :created, location: @invoice }
        else
          format.html { render :new }
          format.json { render json: @invoice.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /dashboard/invoices/1
    # PATCH/PUT /dashboard/invoices/1.json
    def update
      respond_to do |format|
        if @invoice.update(dashboard_invoice_params)
          format.html { redirect_to [:dashboard, @invoice], notice: 'Invoice was successfully updated.' }
          format.json { render :show, status: :ok, location: @invoice }
        else
          format.html { render :edit }
          format.json { render json: @invoice.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /dashboard/invoices/1
    # DELETE /dashboard/invoices/1.json
    def destroy
      @invoice.destroy
      respond_to do |format|
        format.html { redirect_to dashboard_invoices_url, notice: 'Invoice was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_invoice
      @invoice = current_user.invoices.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashboard_invoice_params
      params.fetch(:invoice, {}).permit(:first_name, :last_name, :client_id, :user_id, :contract_id, :property_id, :due_date, :invoicing_date, :paid_at, :cancelled_at, :rent_collection_id)
    end
  end
end
