class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :code
      t.string :lang
      t.string :q_id

      t.timestamps
    end
  end
end
