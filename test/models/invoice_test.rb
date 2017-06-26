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

require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
