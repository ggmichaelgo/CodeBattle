
class CppCompiler < Compiler
	def initialize
		super
		@path += "CPP/"
	end

	def compile code
		puts code
	end	

	def run
		return 'c++'
	end
end