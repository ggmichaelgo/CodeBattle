class ActiveRecord::Base
	def self.acts_as_question
		include Question
	end
end
