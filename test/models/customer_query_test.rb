# == Schema Information
#
# Table name: customer_queries
#
#  id           :integer          not null, primary key
#  email        :string           not null
#  full_name    :string           not null
#  phone_number :string           not null
#  enquiry      :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  resolution   :string           default(NULL), not null
#

require 'test_helper'

class CustomerQueryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
