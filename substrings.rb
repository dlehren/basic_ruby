def substrings string, array
	words = (string.downcase).split(' ')
	results = {}
	times = 0
	array.each do |x|
		words.each do |y|
			if y.include? x
				times += 1
			end
		end
		results[x] = times if times > 0
		times = 0
		
	end
	puts results
	return results
	


end





 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 substrings("below", dictionary)
 substrings("Howdy partner, sit down! How's it going?", dictionary)