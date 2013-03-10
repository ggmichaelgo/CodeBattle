class UserInfo < ActiveRecord::Base  
	has_many :solved_questions
	attr_accessible :points, :username
	belongs_to :coder
	belongs_to :user	
end
