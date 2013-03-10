module Question	
	@classes = []
	@count = 0
	@deck = []

	def self.load_classes
		# exceptions = ["lib/Questions/question.rb", "lib/Questions/Question_Properties.rb"]
		# (Dir.glob("lib/Questions/*.rb") - exceptions).each do |path|
		# 	require path
		# end
		if @classes.count < 2 
			RobotQuestion
			IOQuestion			
		end		
	end

	def self.rnd
		@deck = Question.category_all('Bank') if @deck.count == 0
		@deck.shuffle!
		return @deck.first	
	end

	def self.count
		@count = all.count if @count == 0		
	end

	def self.all
		arr = []
		load_classes
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

	def self.category_all(category)
		result = []
		load_classes
		@classes.each do |t|
			questions = t.where("category = '"+ category + "'")
			if questions.count > 0
				result.concat questions
			end
		end
		return result
	end

	def self.category_find(category, id)
		load_classes
		q = nil
		@classes.each do |t|
			q = t.where("category = '"+ category + "'&& category_index = "+ id.to_s)
			if(q.count > 0)
				break
			end
		end
		return q
	end

	def self.find(id)
		load_classes
		@classes.each do |t|
			question = t.find_by_id(id)
			if question != nil
				return question
			end			
		end
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