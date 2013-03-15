class CreateUserInfos < ActiveRecord::Migration
	def change
		create_table :user_infos do |t|
			t.integer :points
			t.integer :rank			
			t.string :username			
			t.references :user
			t.references :coder
		end
	end
end
