class SolvedQuestion < ActiveRecord::Base
	attr_accessible :question_id, :question_category, :question_category_id, :solved_time, :started_time, :code
end
