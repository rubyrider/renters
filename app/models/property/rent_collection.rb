# == Schema Information
#
# Table name: property_collections
#
#  id                    :integer          not null, primary key
#  section_id            :integer
#  property_id           :integer
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  fee_cents             :integer          default(0), not null
#  fee_currency          :string           default("USD"), not null
#  name                  :string
#  clients_properties_id :integer
#

class Property::RentCollection < ApplicationRecord

  self.table_name = 'property_collections'

  belongs_to :contract, foreign_key: :clients_properties_id
  belongs_to :property
  belongs_to :user
  has_one :section
end
