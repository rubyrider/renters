class AddUserReferencesToPropertyUnit < ActiveRecord::Migration[5.1]
  def change
    add_reference :property_units, :user, foreign_key: true
  end
end
