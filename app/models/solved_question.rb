class SolvedQuestion < ActiveRecord::Base
	attr_accessible :question_category, :question_id, :solved_time, :started_time, :code
end
