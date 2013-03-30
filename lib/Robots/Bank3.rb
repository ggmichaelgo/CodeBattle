pw = "nom! nom! nom!"

def prime(num)
	return false if num == 1
	return true if num == 2
	return false if num % 2 == 0
	limit = num ** 0.5 + 1
	(3...limit).each do |i|
		return false if num % i == 0
		i+=1
	end
	return true
end

cnt = 0
begin
	loop do
		num = gets.to_i
		break if prime(num) == false
		puts num		
		cnt+=1
		if cnt == 100
			puts pw
			break
		end
		$stdout.flush
	end
rescue Errno::EPIPE

end
