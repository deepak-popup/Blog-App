class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true } 

  before_validation :normalize_name, on: [ :create, :update ]

  private
    def normalize_name
      self.name = name.downcase.titleize
    end 
end
