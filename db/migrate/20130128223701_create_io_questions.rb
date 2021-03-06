
class CreateIoQuestions < ActiveRecord::Migration
	def change
		#inherit properties from Questions
		execute <<-SQL
			CREATE TABLE io_questions  as select * from question_properties			
		SQL

		execute <<-SQL
			ALTER TABLE io_questions
			ADD PRIMARY KEY (id);
		SQL
		add_column :io_questions, :inputs, :text
		add_column :io_questions, :outputs, :text
		
	end

	def down
		drop_table :io_questions
	end
end
