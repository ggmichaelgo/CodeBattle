class AddQuestionCategoryIndexToSolvedQuestions < ActiveRecord::Migration
  def change
    add_column :solved_questions, :question_category_index, :integer
  end
end
