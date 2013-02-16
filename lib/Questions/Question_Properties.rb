
class QuestionProperties < ActiveRecord::Base
	belongs_to :Question, :polymorphic => true, :dependent => :destroy
	#validates_presence_of :name, :content, :point, :question_type	
	attr_accessible :name, :content, :point, :question_type, :category, :category_index
end