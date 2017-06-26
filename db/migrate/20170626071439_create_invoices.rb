class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :first_name
      t.string :last_name
      t.integer :client_id, index:true
      t.references :user, foreign_key: true
      t.integer :contract_id, foreign_key: true
      t.references :property, foreign_key: true
      t.datetime :due_date
      t.datetime :invoicing_date
      t.datetime :paid_at
      t.datetime :cancelled_at
      t.integer :rent_collection_id, foreign_key: true

      t.timestamps
    end
  end
end
