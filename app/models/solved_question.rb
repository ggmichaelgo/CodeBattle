class SolvedQuestion < ActiveRecord::Base
	attr_accessible :question_number, :solved_time, :started_time
end
