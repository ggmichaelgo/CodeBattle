class PvpController < ApplicationController
	def index
		
	end

	def create
		b = Battle.new
		b.add_coder current_user
		b.save
		redirect_to :action => 'battle', :id => b.id
	end

	def battle
		@battle = Battle.find params[:id]
		@question = Question.category_find('Bank', @battle.question_id)
		@question.content = @question.content.html_safe
		@code = Code.new
		if @battle.current_user(current_user) == false && @battle.add_coder(current_user) == false
			render :json => ['Room is full', @battle.current_user(current_user)]
		end
	end

	def update_user
		battle = Battle.find params[:battle_id]
		if (coder = battle.current_user current_user)
			coder.code.update_attributes(params[:user_code])
			opponent = battle.opponent_user(current_user)
			data = {
				'opponent' => {
					'code' => opponent.code.code,
					'username' => opponent.user_info.username
				},
				'state' => battle.state
			}
			if battle.state=="running" && coder.code.q_id == "0"
				data['question'] = Question.category_find('Bank',battle.question_id).content.html_safe 
			elsif battle.state == 'finish'
				data['winner'] = battle.coders.find { |x| x.state == 'finished' }.user_info
			end
			render :json => data
		else
			render :json => coder
		end
	end

	def run
		battle = Battle.find(params[:code][:battle_id])
		params[:code].delete(:battle_id)
		code = Code.new(params[:code])
		q = Question.category_find('Bank', @battle.question_id)
		judge = JudgeFactory.get q, code
		result = judge.run
		
		if result.last == true && battle.state == 'running'
			battle.state = 'finish'
			coder = battle.current_user(current_user)
			coder.state = 'finished'
			coder.save
			battle.save
		end
		render :json => result
	end
end
