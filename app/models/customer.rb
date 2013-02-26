class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :zip_code
  
  validates :name, presence: true
  
  validates :email, presence: true
  
  validates :address, presence: true
  
  validates :zip_code, presence: true
  
  validates :phone_number, presence: true
  
  validates :quiz_score, presence: true
end
