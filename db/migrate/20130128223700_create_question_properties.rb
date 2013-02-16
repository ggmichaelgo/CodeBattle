class CreateQuestionProperties < ActiveRecord::Migration
	def change
		create_table :question_properties do |t|
			t.string :name
			t.string :question_type
			t.text :content
			t.integer :point
			t.string :category
			t.integer :category_index
			t.timestamps
		end
	end

	def down

	end
end
