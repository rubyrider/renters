# == Schema Information
#
# Table name: invoices
#
#  id                 :integer          not null, primary key
#  first_name         :string
#  last_name          :string
#  client_id          :integer
#  user_id            :integer
#  contract_id        :integer
#  property_id        :integer
#  due_date           :datetime
#  invoicing_date     :datetime
#  paid_at            :datetime
#  cancelled_at       :datetime
#  rent_collection_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Invoice < ApplicationRecord
  belongs_to :property_client, class_name: 'Property::Client', foreign_key: :client_id, optional: true
  belongs_to :user
  belongs_to :contract, class_name: 'Contract', foreign_key: :contract_id, optional: true
  belongs_to :property
  belongs_to :rent_collection, class_name: 'Property::RentCollection', foreign_key: :rent_collection_id, optional: true

  def full_name
    [first_name, last_name].join(' ')
  end
end
