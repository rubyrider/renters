class CustomerQuery < ApplicationRecord
  validates :email, :full_name, :enquiry, :phone_number, presence: true
  validates :enquiry,  uniqueness: true

  enum resolution: ['new_query', 'pending', 'resolved']
end
