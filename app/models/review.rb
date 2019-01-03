class Review < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  validates :body, presence: true
  validate :rating, presence: true, numericality: { only_integer: true }
end
