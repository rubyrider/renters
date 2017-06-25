class Property < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :clients, :class_name => 'Property::Client', join_table: 'properties_property_clients'
end
