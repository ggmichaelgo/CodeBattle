class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :code
      t.string :lang
      t.string :question

      t.timestamps
    end
  end
end
