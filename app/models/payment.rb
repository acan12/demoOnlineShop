class Payment < ActiveRecord::Base
  belongs_to :user
  belongs_to :bank
  has_and_belongs_to_many :products
  
  validates :name, presence: true
  validates :status, presence: true  
  validates :quantity, presence: true  
  
  PENDING_STATUS  = 1 
  VERIFIED_STATUS     = 2
  
  def self.generate_for_name
    "TX-#{DateTime.now.to_i}"
  end
  
end
