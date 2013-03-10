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

	def JudgeFactory.get q, code						
		judge = @@container[q.class.to_s].new(q, code.code, code.lang)
		return judge
	end
end