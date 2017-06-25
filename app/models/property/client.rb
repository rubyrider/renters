# == Schema Information
#
# Table name: property_clients
#
#  id          :integer          not null, primary key
#  first_name  :string           not null
#  last_name   :string           not null
#  user_id     :integer
#  phone       :string           not null
#  suite       :string
#  address1    :string           not null
#  address2    :string
#  district    :string           not null
#  post_office :string
#  zip         :string           not null
#  area        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Property::Client < ApplicationRecord
  belongs_to :user, optional: true

  has_and_belongs_to_many :properties, join_table: 'clients_properties'

  def full_name
    [first_name, last_name].join(' ')
  end

  def address
    [suite, address1, address2, post_office, area, district, zip].compact.uniq.join(', ')
  end
end
