class DropTablePropertiesPropertyClients < ActiveRecord::Migration[5.1]
  def change
    drop_table :properties_property_clients
  end
end
