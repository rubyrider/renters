# == Schema Information
#
# Table name: sms_accounts
#
#  id               :integer          not null, primary key
#  amount           :integer          default(20)
#  user_id          :integer
#  state            :string
#  payment_cents    :integer          default(0), not null
#  payment_currency :string           default("USD"), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class SmsAccount < ApplicationRecord
  MAXIMUM_SMS_LENGTH = 240
  
  SMSContentLengthExceed = Class.new(StandardError)
  
  belongs_to :user
  
  # Send sms wrapper!
  def send_sms(phone, message, allow_shrink = false)
    return false if self.amount.zero?
    
    # If shrink is allowed then we will ignore the following step
    #TODO improvement required!
    if message.size > MAXIMUM_SMS_LENGTH && !allow_shrink
      raise SMSContentLengthExceed, "Only #{MAXIMUM_SMS_LENGTH} characters is allowed to send an sms"
    end
    
    # Send sms through vendor's sms!
    @result = MuthofunApi::SmsAccount.send_sms(phone, message[allowed_characters])

    adjust_amount if @result.success?
  end
  
  # Allowed character!
  def allowed_characters
    0..(MAXIMUM_SMS_LENGTH - 1)
  end
  
  # We need to count for every sms account
  def adjust_amount(sms_count = 1)
    unless sms_count.zero?
      _amount = self.amount
      
      self.update_column(:amount, (_amount-sms_count))
    end
  end
end
