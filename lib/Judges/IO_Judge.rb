class IOJudge < Judge
	# attr_accessor :question, :code
	# attr_accessor :compiler

	def run
		compiler.compile @code
		output = []
		solved = true
		(0..@question.inputs.count-1).each do |i|
			output << compiler.run( @question.inputs[i] )
			output[i] = output[i].join('')
			solved = false if output[i] != @question.outputs[i] && output[i] != (@question.outputs[i] + "\n") && (output[i]+"\n") != @question.outputs[i]
		end
		return output, solved
	end
end