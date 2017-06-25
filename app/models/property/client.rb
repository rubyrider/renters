class Property::Client < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :properties, class_name: 'Property', join_table: 'properties_property_clients'
end
