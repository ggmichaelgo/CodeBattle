class CreateQuestionProperties < ActiveRecord::Migration
	def change
		create_table :question_properties do |t|
			t.string :name
			t.text :content
			t.integer :point
			t.timestamps
		end
	end

	def down

	end
end
