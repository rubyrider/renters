class Invoice < ApplicationRecord
  belongs_to :property_client, class_name: 'Property::Client', foreign_key: :client_id
  belongs_to :user
  belongs_to :contract, class_name: 'Contract', foreign_key: :contract_id
  belongs_to :property
  belongs_to :rent_collection, class_name: 'Property::RentCollection', foreign_key: :rent_collection_id
end
