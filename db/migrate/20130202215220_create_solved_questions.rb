class CreateSolvedQuestions < ActiveRecord::Migration
	def change
		create_table :solved_questions do |t|
			t.string :question_category
			t.integer :question_index	
			t.text :code		
			t.datetime :started_time
			t.datetime :solved_time
			t.references :user_info
		end
	end
end
