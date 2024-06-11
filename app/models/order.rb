class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :order_items

  # Валідації
  validates :user, presence: true
  validates :restaurant, presence: true
  validates :status, presence: true, inclusion: { in: %w[pending confirmed delivered canceled], message: "%{value} is not a valid status" }
end