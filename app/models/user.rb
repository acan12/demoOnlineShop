class User < ActiveRecord::Base
  has_many :payments
  has_many :banks
  
  validates :email, presence: true
  validates :first_name, presence: true
end
