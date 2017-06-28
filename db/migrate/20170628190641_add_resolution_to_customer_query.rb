class AddResolutionToCustomerQuery < ActiveRecord::Migration[5.1]
  def change
    add_column :customer_queries, :resolution, :string, default: 'new_query', null: false
  end
end
