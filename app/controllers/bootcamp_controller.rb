class BootcampController < ApplicationController
	def index
		@list = Question.category_all('BootCamp')
		@list.sort! {|x,y| x.category_index <=> y.category_index}
		@solved_questions = current_user.user_info.solved_questions.select { |x| x.question_category == 'BootCamp' && x.solved_time != nil}
	end

	def solve
		list = Question.category_all('BootCamp')
		@question = list.find{|x| x.category_index == Integer(params[:id])}
		@question.content = @question.content.html_safe

		@solved_question = current_user.user_info.solved_questions.find { |x| 
			x.question_category == 'BootCamp' && x.question_index == Integer(params[:id])
		}
		if @solved_question == nil
			@solved_question = current_user.user_info.solved_questions.create(
				:question_index => Integer(params[:id]),
				:question_category => 'BootCamp',
				:code => '',
				:started_time => Time.now)
		end
		@code = Code.new(:code => @solved_question.code)
	end

	def run
		@code = Code.new(params[:code])
		q = Question.category_find('BootCamp', @code.q_id)
		
		judge = JudgeFactory.get q, @code
		result = judge.run

		solved_question = current_user.user_info.solved_questions.find { |x| 
			x.question_category == 'BootCamp' && x.question_index == Integer(@code.q_id)
		}
		solved_question.code = @code.code

		#solved the question
		if result.last == true && solved_question.solved_time == nil
			solved_question.solved_time = Time.now 
			current_user.user_info.points += 1
		end
		solved_question.save
		current_user.user_info.save
		render :json => result
	end
end