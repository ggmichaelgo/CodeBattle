class RobotJudge < Judge
	# attr_accessor :question, :code
	# attr_accessor :compiler
	def run
		compiler.compile @code		
		output = compiler.run_with_robot @question.robot_path
		result = true
		result = false if output.last != @question.password && output.last != (@question.password + "\n")

		return output.join("\n"), result
	end
end