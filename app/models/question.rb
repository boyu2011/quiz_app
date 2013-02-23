class Question < ActiveRecord::Base
  attr_accessible :content
  
  has_many :choices
end
