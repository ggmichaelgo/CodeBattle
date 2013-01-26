class Compiler
	attr_accessor :path
	def initialize		
		@path = "UserCodes/"		
	end

	def compile code
		puts code
	end	

	def run
		return 'ERROR'
	end
end