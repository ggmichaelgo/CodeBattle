
class RobotQuestion < ActiveRecord::Base
	include Question
	attr_accessible :robot_path, :password
end