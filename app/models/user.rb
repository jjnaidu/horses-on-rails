class User < ApplicationRecord
  has_secure_password

  has_many :horses

  validates :email, uniqueness: true
  validates :username, uniqueness: true
end
