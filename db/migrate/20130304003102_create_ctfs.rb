class CreateCtfs < ActiveRecord::Migration
	def change
		create_table :ctfs do |t|
			t.string :title

			t.text :questions
			t.references :capturer
			t.timestamps
		end
	end
end
