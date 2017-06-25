# == Schema Information
#
# Table name: renters
#
#  id          :integer          not null, primary key
#  name        :string
#  code        :citext
#  user_id     :integer
#  property_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Renter < ApplicationRecord
  belongs_to :user
  belongs_to :property
end
