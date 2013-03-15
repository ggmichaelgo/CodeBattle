class CreateHosts < ActiveRecord::Migration
	def change
		create_table :hosts do |t|
			t.string :name
			t.text :description
			t.string :logo_path
			t.references :ctf
			t.timestamps
		end
	end
end
