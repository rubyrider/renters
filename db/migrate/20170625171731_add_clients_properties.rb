class AddClientsProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_properties do |t|
      t.references :client
      t.references :property

      t.timestamps
    end
  end
end
