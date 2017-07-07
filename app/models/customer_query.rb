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

class CustomerQuery < ApplicationRecord
  validates :email, :full_name, :enquiry, :phone_number, presence: true
  validates :enquiry,  uniqueness: true

  enum resolution: ['new_query', 'pending', 'resolved']
end
