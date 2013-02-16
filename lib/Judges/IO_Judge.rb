class IOJudge < Judge
	# attr_accessor :question, :code
	# attr_accessor :compiler

	def run
		compiler.compile @code
		output = []
		solved = true
		(0..@question.inputs.count-1).each do |i|
			output << compiler.run( @question.inputs[i] )
			solved = false if output.last != @question.outputs[i] && output.last != (@question.outputs[i] + "\n")
		end
		return output, solved
	end
end