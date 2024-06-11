class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items

  # Валідації
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :restaurant, presence: true
end