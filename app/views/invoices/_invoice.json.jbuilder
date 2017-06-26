json.extract! invoice, :id, :first_name, :last_name, :client_id, :user_id, :contract_id, :property_id, :due_date, :invoicing_date, :paid_at, :cancelled_at, :rent_collection_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
