class AddStartDateAndEndDate < ActiveRecord::Migration[5.1]
  def change
    add_column :clients_properties, :start_date, :date
    add_column :clients_properties, :end_date, :date
  end
end
