class CreateBattles < ActiveRecord::Migration
	def change
		create_table :battles do |t|			
			t.string :state
			t.integer :question_id
			t.references :coders

			t.timestamps
		end
	end
end
