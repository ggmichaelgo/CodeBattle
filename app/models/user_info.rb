class UserInfo < ActiveRecord::Base  
	has_many :solved_questions
	attr_accessible :points
	belongs_to :user
end
