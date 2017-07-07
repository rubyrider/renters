class AddRentReferencesToPropertyUnit < ActiveRecord::Migration[5.1]
  def change
    add_reference :clients_properties, :property_unit, foreign_key: true
  end
end
