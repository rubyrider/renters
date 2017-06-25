class CreateRenters < ActiveRecord::Migration[5.1]
  def change
    create_table :renters do |t|
      t.string :name
      t.citext :code
      t.references :user, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
