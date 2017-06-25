class CreatePropertyClients < ActiveRecord::Migration[5.1]
  def change
    create_table :property_clients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.references :user, foreign_key: true
      t.string :phone, null: false
      t.string :suite
      t.string :address1, null: false
      t.string :address2
      t.string :district, null: false
      t.string :post_office
      t.string :zip, null: false
      t.string :area, comment: 'Thana'

      t.timestamps
    end
  end
end
