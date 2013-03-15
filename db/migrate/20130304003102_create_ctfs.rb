class CreateCtfs < ActiveRecord::Migration
	def change
		create_table :ctfs do |t|
			t.string :title
			t.string :state
			t.text :questions

			t.timestamps
		end
	end
end
