class CreatePropertyCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :property_collections do |t|
      t.string :amount
      t.integer :section_id
      t.references :property, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :property_collections, :section_id
  end
end
