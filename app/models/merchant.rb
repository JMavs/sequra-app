class Merchant < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :cif, presence: true
end
