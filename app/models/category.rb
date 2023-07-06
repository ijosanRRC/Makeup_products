class Category < ApplicationRecord
  has_many :products

#Validation
 validates :name, presence: true
 validates :name, format: { with: /\A[a-zA-Z\s]+\z/, message: "should only contain letters and spaces" }
end
