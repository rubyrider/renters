# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  number_of_property     :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :properties
  has_many :contracts
  has_many :clients, class_name: 'Property::Client'
  has_many :rent_collections, :class_name => 'Property::RentCollection'
  has_many :invoices

  has_one :sms_account

  after_create :create_sms_account
  after_create :notify_upon_registration

  def full_name
    [first_name, last_name].compact.join(' ')
  end
  
  private
  
  def notify_upon_registration
    MuthofunApi::SmsAccount.send_sms('+8801766678130', "A new user with email: #{self.email}. Total user: #{User.count}")
  end
end
