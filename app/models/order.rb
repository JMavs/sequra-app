class Order < ApplicationRecord
  has_one :merchant
  has_one :shopper
  validates :merchant, presence: true
  validates :shopper, presence: true
  validates :amount, presence: true
end
