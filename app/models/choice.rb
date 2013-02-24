class Choice < ActiveRecord::Base
  attr_accessible :content, :correct, :question_id
  
  belongs_to :question
  
  validates :content, presence: true
end
