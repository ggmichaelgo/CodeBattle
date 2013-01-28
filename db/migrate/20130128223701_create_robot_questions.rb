
class CreateRobotQuestions < ActiveRecord::Migration
	def up
		#inherit properties from Questions
		execute <<-SQL
			CREATE TABLE robot_questions  as select * from question_properties
		SQL

		add_column :robot_questions, :robot_path, :text	
	end

	def down
		drop_table :robot_questions
	end
end
