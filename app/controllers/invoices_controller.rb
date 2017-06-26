class InvoicesController < InheritedResources::Base

  private

    def invoice_params
      params.require(:invoice).permit(:first_name, :last_name, :client_id, :user_id, :contract_id, :property_id, :due_date, :invoicing_date, :paid_at, :cancelled_at, :rent_collection_id)
    end
end

