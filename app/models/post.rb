class Post < ApplicationRecord
  belongs_to :user
  belongs_to :subcategory

  validates :title, presence: true
  validates :description, presence: true
end
