class User < ApplicationRecord
  before_save do
    self.email = "add_your_email@host.com"
  end

  has_many :articles, dependent: :destroy

  has_secure_password

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 5 }
end
