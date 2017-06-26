class AddRentFeeToPropertyCollection < ActiveRecord::Migration[5.1]
  def change
    add_monetize :property_collections, :fee, amount: { default: 0 }
    remove_column :property_collections, :amount
  end
end
