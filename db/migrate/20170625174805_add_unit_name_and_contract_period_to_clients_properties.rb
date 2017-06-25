class AddUnitNameAndContractPeriodToClientsProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :clients_properties, :unit_name, :string
    add_column :clients_properties, :contract_period, :integer, default: 1, comment: 'In Months'
  end
end
