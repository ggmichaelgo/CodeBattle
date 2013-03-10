class Coder < ActiveRecord::Base
	attr_accessible :state	
	belongs_to :battle
	has_one :code, :class_name => "Code"
	has_one :user_info, :class_name => "UserInfo"

	def initialize user
		super()
		self.state = 'not_ready'
		self.code = Code.new
		self.user_info = user.user_info
		self.save
	end
end
