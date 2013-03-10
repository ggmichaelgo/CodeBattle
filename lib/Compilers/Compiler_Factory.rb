
class CompilerFactory
	@@langs = [
		:Java,
		:CPP,
		:Python	
	]
	@@container = {
		:Java => JavaCompiler,
		:CPP => CppCompiler,
		:Python => PythonCompiler
	}
	def CompilerFactory.langs 
		@@langs
	end

	def CompilerFactory.get lang
		if(lang.to_i.class == Fixnum)
			lang = @@langs[lang.to_i]
		end
		return @@container[lang].new
	end
end