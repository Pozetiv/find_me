class Category < ApplicationRecord
  has_many :posts, through: :subcategories
  has_many :subcategories
  
  validate :name, presence: true
end
