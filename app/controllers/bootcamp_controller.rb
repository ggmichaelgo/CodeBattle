class BootcampController < ApplicationController
	def index
		@list = Question.category_all('BootCamp')
		puts @list.count
	end

	def solve
		@question = Question.find(params[:id])
		@question.content = ERB.new(@question.content).result
	end
end
