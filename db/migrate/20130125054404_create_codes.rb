class CreateCodes < ActiveRecord::Migration
	def change
		create_table :codes do |t|
			t.text :code
			t.string :lang
			t.string :q_id

			t.references :coder
			t.timestamps
		end
	end
end
