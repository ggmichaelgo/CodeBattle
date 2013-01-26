
class PythonCompiler < Compiler
	def initialize
		super
		@path += "Python/"
	end

	def compile code
		puts code
	end	

	def run
		return 'python'
	end
end
