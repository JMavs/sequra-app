class DisburseRule < ApplicationRecord
  validates :min_amount, presence: true, numericality: { greater_than: 0 }
  validates :max_amount, presence: true
  validates :percentage, presence: true, numericality: { greater_than: 0 }
end
