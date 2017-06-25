# == Schema Information
#
# Table name: properties
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :citext
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Property < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :clients, :class_name => 'Property::Client', join_table: 'clients_properties'
end
