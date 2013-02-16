class BootcampController < ApplicationController
	def index
		@list = Question.category_all('BootCamp')
		#@list = Question.all
	end

	def solve
		@code = Code.new
		list = Question.category_all('BootCamp')
		list.each do |q|
			puts q.category_index
		end
		@question = list.find{|x| x.category_index == Integer(params[:id])}
		@question.content = @question.content.html_safe	
	end

	def run 		
		@code = Code.new(params[:code])
		q = Question.category_find('BootCamp', @code.q_id)
		q = q.first		
		judge = JudgeFactory.get q, @code.code, :Java
		result = judge.run		
		render :json => result
	end
end
