
class QuestionProperties < ActiveRecord::Base
	belongs_to :Question, :polymorphic => true, :dependent => destroy
	attr_accessible :name, :content, :point
end