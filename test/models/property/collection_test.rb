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

require 'test_helper'

class Property::CollectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
