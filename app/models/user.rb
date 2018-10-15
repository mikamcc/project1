class User < ApplicationRecord
  has_secure_password
  has_many :restaurants
  has_many :images
  validates :email, presence: true, uniqueness: true
end
