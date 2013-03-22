class Battle < ActiveRecord::Base
	attr_accessible :state, :question_id
	has_many :coders

	@states = ['created', 'running', 'finish']

	def initialize
		super
		self.state = 'created'
		self.question_id = Question.rnd.category_index
	end

	def question
		Question.find(self.question_id)
	end

 	def add_coder user
		coder = Coder.new user
		if self.coders.count < 2 && current_user(user) == false
 			self.coders << coder
 			self.state = 'running' 			
			return true
		else
			coder.delete
			return false
		end
	end

	def current_user c_user
		coder = self.coders.select { |x| x.user_info == c_user.user_info }
		return false if coder == []
		return coder[0]
	end

	def opponent_user c_user
		if self.coders.count == 2
			return coder = self.coders.select { |x| x.user_info != c_user.user_info }[0]
		else
			return nil
		end
	end
end
