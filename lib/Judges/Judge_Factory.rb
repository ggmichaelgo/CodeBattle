class JudgeFactory
	@@types = [
		:IO,
		:ROBOT
	]
	
	@@container = {
		"IOQuestion" => IOJudge,
		"RobotQuestion" => RobotJudge
	}

	def JudgeFactory.type
		@@types
	end

	def self.container
		@@container
	end

	def JudgeFactory.get q, code, lang						
		judge = @@container[q.class.to_s].new(q, code, lang)
		return judge
	end
end