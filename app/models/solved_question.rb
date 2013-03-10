class SolvedQuestion < ActiveRecord::Base
	attr_accessible :question_category, :question_index, :solved_time, :started_time, :code
end
