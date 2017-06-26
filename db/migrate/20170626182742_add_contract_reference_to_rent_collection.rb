class AddContractReferenceToRentCollection < ActiveRecord::Migration[5.1]
  def change
    add_reference :property_collections, :clients_properties, foreign_key: true
  end
end
