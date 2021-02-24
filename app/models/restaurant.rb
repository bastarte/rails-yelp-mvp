CATEGORIES = %w[chinese italian japanese french belgian]

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
    in: CATEGORIES,
    message: "%{value} should be a category among #{CATEGORIES}"
  }
end
