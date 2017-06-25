class CreateJoinTablePropertyClientProperty < ActiveRecord::Migration[5.1]
  def change
    create_join_table :property_clients, :properties do |t|
    end
  end
end
