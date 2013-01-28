
class IOQuestion < ActiveRecord::Base
	include Question

	serialize :inputs
	serialize :outputs	
	attr_accessible :inputs, :outputs
end