class Shopper < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :nif, presence: true

  has_many :orders
end
