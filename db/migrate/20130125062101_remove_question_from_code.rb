class RemoveQuestionFromCode < ActiveRecord::Migration
  def up
    remove_column :codes, :question
  end

  def down
    add_column :codes, :question, :string
  end
end
