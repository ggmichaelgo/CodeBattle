class Ctf < ActiveRecord::Base
	serialize :questions
	has_one :host
	attr_accessible :title, :state, :host, :questions, :finished
	
	def initialize h, i
		super
		self.state = 'created'
		self.questions = []
		self.save		
	end

	def add_question q_id
		if self.state == 'created'
			self.questions_id << q_id if self.questions_id.index(q_id) == nil
			self.save
		end
	end
end
