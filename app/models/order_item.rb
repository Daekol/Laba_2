class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :dish

  # Валідації
  validates :order, presence: true
  validates :dish, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end