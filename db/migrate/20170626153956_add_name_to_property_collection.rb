class AddNameToPropertyCollection < ActiveRecord::Migration[5.1]
  def change
    add_column :property_collections, :name, :string
  end
end
