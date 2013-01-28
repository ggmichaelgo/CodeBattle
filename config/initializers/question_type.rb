exceptions = [
	"lib/Questions/question.rb", 
	"lib/Questions/Question_Properties.rb"
]

(Dir.glob("lib/Questions/*.rb") - exceptions).each do |path|		
	require path		
end