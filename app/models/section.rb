# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Section < ApplicationRecord
  belongs_to :user, optional: true
  has_many :rent_collections, :class_name => 'Property::RentCollection'
end
