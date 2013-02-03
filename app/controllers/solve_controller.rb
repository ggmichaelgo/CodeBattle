class SolveController < ApplicationController
	def index
		@code = Code.new
	end

	def check
		compiler = JavaCompiler.new		
		render :json => [compiler.test]
	end

	def submit		
		@code = Code.new(params[:code])
		compiler = CompilerFactory.get @code.lang.to_i	
		# render :json => @code
		render :json => [compiler.run([5])]
	end
end
