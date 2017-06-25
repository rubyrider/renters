# == Schema Information
#
# Table name: clients_properties
#
#  id              :integer          not null, primary key
#  client_id       :integer
#  property_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  unit_name       :string
#  contract_period :integer          default(1)
#  user_id         :integer
#

class ClientProperty < ApplicationRecord
  self.table_name = 'clients_properties'

  belongs_to :property_client, :class_name => 'Property::Client'
  belongs_to :property
  belongs_to :user
end
