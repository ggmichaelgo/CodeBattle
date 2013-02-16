pw = '1225'
begin
	loop do
		guess = gets
		puts guess
		if guess.chomp == pw
			puts pw
			break
		end		
		$stdout.flush		
	end
rescue Errno::EPIPE

end