class CreatePropertyUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :property_units do |t|
      t.string :name
      t.text :description
      t.references :property, foreign_key: true

      t.integer :max_members_count, default: 1
      t.integer :number_of_room, default: 1
      t.integer :number_of_bathrooms, default: 0
      t.integer :number_of_veranda, default: 0
      t.boolean :shared, default: false
      t.boolean :bachelors_allowed, default: false
      t.boolean :intercom_enabled, default: false
      t.boolean :south_facing, default: false
      t.boolean :pets_allowed, default: false
      t.boolean :occupied, default: false
      t.boolean :available_for_rent, default: false
      t.integer :minimum_advance_payment, default: 2

      t.timestamps
    end
  end
end
