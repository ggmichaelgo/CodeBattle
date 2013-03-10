pw = '2468'
begin
	loop do
		guess = gets
		puts ""
		if guess.chomp == pw
			puts pw
			break
		end		
		$stdout.flush		
	end
rescue Errno::EPIPE

end