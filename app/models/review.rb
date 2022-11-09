class Review < ApplicationRecord
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5).to_a }

  belongs_to :restaurant
end
