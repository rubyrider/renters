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

require 'test_helper'

class RenterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
