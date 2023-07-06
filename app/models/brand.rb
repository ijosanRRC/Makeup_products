class Brand < ApplicationRecord
 has_many :products

#Validations
validates :name, length: { minimum: 2, maximum: 50 }
validates :brand_code, format: { with: /\A[a-zA-Z]+\z/, message: "should only contain letters" }
end
