class Product < ActiveRecord::Base
  has_and_belongs_to_many :payments
  has_and_belongs_to_many :promotions
  
  validates :name, presence: true  
  validates :price, presence: true
  validates :quantity, presence: true
  
end
