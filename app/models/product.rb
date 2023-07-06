class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  has_many :reviews

#Validation
  validates :name, length: { minimum: 3, maximum: 50 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
