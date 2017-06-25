class Property::Collection < ApplicationRecord
  belongs_to :property
  belongs_to :user
  has_one :section
end
