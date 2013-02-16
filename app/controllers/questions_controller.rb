class QuestionsController < ApplicationController
	def index	
		@Questions = Questions.all
	end

	def new
		
	end

	def create
		#@question = IOQuestion.new(params[:question])
		@question = RobotQuestion.new(params[:question])
		
		@question.save
		render :json => 1
	end

	def show

	end

	def edit	

	end

	def update 

	end

	def destroy	

	end	
end
