class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :code
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_foreign_key :property_collections, :sections
  end
end
