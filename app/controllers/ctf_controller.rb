class CtfController < ApplicationController
	def index

	end

	def detail
		@ctf = Ctf.find(params[:id])
		
	end	

	def run
		ctf = Ctf.find(params[:id])
		code = Code.new(params[:code])
		q = Question.category_find('CTF', ctf.questions_id[@ode.q_id])
		
		judge = JudgeFactory.get q, code
		result = judge.run

		solved_question = current_user.user_info.solved_questions.find { |x| 
			x.question_category == 'CTF' && x.question_index == Integer(code.q_id)
		}
		solved_question.code = code.code

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
