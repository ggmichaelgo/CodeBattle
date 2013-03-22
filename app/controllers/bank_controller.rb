class BankController < ApplicationController

	def index
		@solved_questions = []
		@solved_questions = current_user.user_info.solved_questions.select{ |x| x.question_category == 'Bank' && x.solved_time != nil} if current_user.username != 'guest'
		@list = Question.category_all('Bank')
		@list.sort! {|x,y| x.category_index <=> y.category_index}		
	end

	def solve
		list = Question.category_all('Bank')
		@question = list.find{|x| x.category_index == Integer(params[:id])}
		@question.content = @question.content.html_safe

		@solved_question = current_user.user_info.solved_questions.find { |x| 
			x.question_category == 'Bank' && x.question_index == Integer(params[:id])
		}
		if @solved_question == nil && current_user.username != 'guest'
			@solved_question = current_user.user_info.solved_questions.create(
				:question_index => Integer(params[:id]),
				:question_category => 'Bank',
				:code => '',
				:started_time => Time.now)
		end
		@solved_question = SolvedQuestion.new if current_user.username == 'guest'
		
		@code = Code.new(:code => @solved_question.code)
	end

	def run
		@code = Code.new(params[:code])
		q = Question.category_find('Bank', @code.q_id)
		
		judge = JudgeFactory.get q, @code
		result = judge.run

		if current_user.username != 'guest'
			solved_question = current_user.user_info.solved_questions.find { |x| 
				x.question_category == 'Bank' && x.question_index == Integer(@code.q_id)
			}
			solved_question.code = @code.code
			
			if result.last == true && solved_question.solved_time == nil
				solved_question.solved_time = Time.now 
				current_user.user_info.points += 1
			end
		end

		solved_question.save
		current_user.user_info.save
		render :json => result
	end

end
