
class RubyCompiler < Compiler
	def initialize
		super
		@path += "Ruby/"
	end

	def compile code
		puts code
	end	

	def run
		return 'ruby'
	end
end
