class Question < ActiveRecord::Base
  attr_accessible :content
  
  has_many :choices
  
  validates :content, presence: true
end
