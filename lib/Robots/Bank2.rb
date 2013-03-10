pw = "BOMB bomb BOMB~"

width = 50
cnt = 0
map = Array.new(width){ Array.new(width) }
(0...width).each do |y|
	flag = false
	((width-y-1)...width).each do |x|
		if flag == false
			map[y][x] = 'X' 
			cnt+=1
			flag = true
		else
			flag = false
		end
	end
end

# (0...width).each do |y|
# 	(0...width).each do |x|
# 		print '_' if map[y][x] == nil
# 		print map[y][x]
# 	end
# 	puts ''
# end
$stdout.sync = true
$stdin.sync = true

begin
	loop do
		$stdout.flush
		guess = gets.split(":")
		puts ""
		x = guess[0].to_i-1
		y = guess[1].to_i-1
		if map[y][x] == nil
			break
		else
			map[y][x] = nil
			cnt-=1			
			if cnt == 0
				puts pw
				break
			else
				#puts cnt.to_s + " Mines remaining"
			end
		end		
	end
rescue Errno::EPIPE

end