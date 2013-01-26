class Judge
	attr_accessor :question, :code
	attr_accessor :compiler

	def initialize question, code, lang
		@question = question
		@code = code
		@compiler = CompilerFactory.get lang
	end

	def run
		raise "method is not implemented"
	end
end