class BootcampController < ApplicationController
	def index
		@list = Question.category_all('BootCamp')
		@list.sort! {|x,y| x.category_index <=> y.category_index}
		@solved_questions = []
		@solved_questions = current_user.user_info.solved_questions.select { |x| x.question_category == 'BootCamp' && x.solved_time != nil} if current_user.username != 'guest'
	end

	def solve
		list = Question.category_all('BootCamp')
		@question = list.find{|x| x.category_index == Integer(params[:id])}
		@question.content = @question.content.html_safe

		@solved_question = current_user.user_info.solved_questions.find { |x| 
			x.question_category == 'BootCamp' && x.question_id == @question.id
		}

		if @solved_question == nil && current_user.username != 'guest'
			@solved_question = current_user.user_info.solved_questions.create(
				:question_id => @question.id.to_s,
				:question_category => 'BootCamp',
				:code => '',
				:started_time => Time.now)
		end		
		@solved_question = SolvedQuestion.new if current_user.username == 'guest'
		
		@code = Code.new(:code => @solved_question.code)
	end

	def run
		@code = Code.new(params[:code])
		q = Question.category_find('BootCamp', @code.q_id)
		
		judge = JudgeFactory.get q, @code
		result = judge.run

		if current_user.username != 'guest'
			solved_question = current_user.user_info.solved_questions.find { |x| 
				x.question_category == 'BootCamp' && x.question_id == q.id
			}
			solved_question.code = @code.code	
			#solved the question
			if result.last == true && solved_question.solved_time == nil
				solved_question.solved_time = Time.now 
				current_user.user_info.points += 1
			end
			solved_question.save
		end
		current_user.user_info.save
		render :json => result
	end
end