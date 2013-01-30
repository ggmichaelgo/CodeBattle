
class IOQuestion < ActiveRecord::Base
	acts_as_question

	serialize :inputs
	serialize :outputs	
	attr_accessible :inputs, :outputs
end