class Ctf < ActiveRecord::Base
	attr_accessible :title
	serialize :questions
	has_one :capturer, :class_name => "UserInfo"

	def initialize
		super()
		self.questions = []
	end
end
