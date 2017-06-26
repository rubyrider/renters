# == Schema Information
#
# Table name: property_collections
#
#  id          :integer          not null, primary key
#  amount      :string
#  section_id  :integer
#  property_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Property::Collection < ApplicationRecord
  belongs_to :property
  belongs_to :user
  has_one :section
end
