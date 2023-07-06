class User < ApplicationRecord

#Validation
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
