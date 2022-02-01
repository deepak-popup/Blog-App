class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  has_secure_password

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 5 }
end
