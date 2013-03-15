class CreateCoders < ActiveRecord::Migration
	def change
		create_table :coders do |t|
			t.string :state
			t.integer :battle_id

			t.timestamps
		end
	end
end