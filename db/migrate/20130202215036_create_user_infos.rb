class CreateUserInfos < ActiveRecord::Migration
	def change
		create_table :user_infos do |t|
			t.integer :points
			t.references :user
		end
	end
end
