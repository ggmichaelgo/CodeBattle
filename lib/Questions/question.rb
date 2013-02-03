module Question	
	@classes = []

	def self.all
		arr = []
		@classes.each do |base|
			arr.concat base.all
		end
		return arr
	end

	def self.included(base)
		@classes << base		
		base.extend ClassMethods
		base.define_question_properties_accessors
	end

	module ClassMethods
		def define_question_properties_accessors
			all_attributes = QuestionProperties.content_columns.map(&:name)
			ignored_attributes = ["created_at", "updated_at", "question_type"]
			attributes_to_delegate = all_attributes - ignored_attributes						
			attributes_to_delegate.each do |attrib|				
				class_eval <<-RUBY
					attr_accessible :#{attrib}
				RUBY
				end
			end
		end
	end