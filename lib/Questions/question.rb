
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
		base.has_one :question_properties, :as => Question, :autosave => true
		base.alias_method_chain :question_properties, :autobuild
	end

	## this will put Question properties into child classes    
	def question_properties_with_autobuild
		question_properties_without_autobuild || build_question_properties
	end

	def method_missing(meth, *args, &blk)
		if question_properties.public_methods.include?(meth.to_s)
			question_properties.send(meth, *args, &blk)
		else
			super
		end
	end

	protected
	def product_properties_must_be_valid
		unless question_properties.valid?
			question_properties.errors.each do |attr, message|
				errors.add(attr, message)
			end
		end
	end
end
