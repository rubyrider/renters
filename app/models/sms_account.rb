# == Schema Information
#
# Table name: sms_accounts
#
#  id               :integer          not null, primary key
#  amount           :integer          default(0)
#  user_id          :integer
#  state            :string
#  payment_cents    :integer          default(0), not null
#  payment_currency :string           default("USD"), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class SmsAccount < ApplicationRecord
  belongs_to :user
end
