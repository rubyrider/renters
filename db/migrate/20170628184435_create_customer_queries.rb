class CreateCustomerQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_queries do |t|
      t.string :email, null: false
      t.string :full_name, null: false
      t.string :phone_number, null: false
      t.text :enquiry, null: false

      t.timestamps
    end
  end
end
