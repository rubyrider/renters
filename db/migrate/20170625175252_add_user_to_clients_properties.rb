class AddUserToClientsProperties < ActiveRecord::Migration[5.1]
  def change
    add_reference :clients_properties, :user, foreign_key: true
  end
end
