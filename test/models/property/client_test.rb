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

require 'test_helper'

class Property::ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
