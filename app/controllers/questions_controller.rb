class QuestionsController < ApplicationController
	def index	
		@Questions = Questions.all
	end

	def new
		
	end

	def create
		if params[:category] == 'IO'
			@question = IOQuestion.new(params[:question])
		elseif params[:category] == 'Robot'
			@question = RobotQuestion.new(params[:question])
		end

		@question = RobotQuestion.new(params[:question])
		#@question = IOQuestion.new(params[:question])

		@question.save
		render :json => 1
	end

	def show

	end

	def edit	
		@question = Question.category_find(params[:category], params[:id])[0]
	end

	def update
		@question = Question.category_find(params[:category], params[:id])[0]
		@question.content = params[:question][:content]
		@question.save
		render :json => 1
	end

	def destroy	

	end	
end
