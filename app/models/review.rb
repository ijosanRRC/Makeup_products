class Review < ApplicationRecord
  attribute :text, :string
  belongs_to :product

#Validation
  validates :content, length: { minimum: 10, maximum: 500 }
end
