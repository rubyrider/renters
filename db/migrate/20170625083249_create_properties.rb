class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'citext'

    create_table :properties do |t|
      t.string :name
      t.citext :code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
