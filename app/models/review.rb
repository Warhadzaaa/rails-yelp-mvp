class Review < ApplicationRecord
  RATING = 0..5

  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
end
