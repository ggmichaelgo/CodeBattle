class IOJudge < Judge
	# attr_accessor :question, :code
	# attr_accessor :compiler

	def run
		compiler.compile @code
		output = compiler.run
		
	end
end