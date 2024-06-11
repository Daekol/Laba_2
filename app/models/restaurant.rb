class Restaurant < ApplicationRecord
    has_many :dishes
    has_many :orders
    
    # Валідації
    validates :name, presence: true, length: { maximum: 100 }
    validates :address, presence: true
  end