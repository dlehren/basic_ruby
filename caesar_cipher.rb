


def caesar_cipher(string,number)
	new_string = ''
	if number > 26 then
		number = number % number
	end

	string.each_byte do |x|
		val = x + number
		if x > 65 && x < 90 && val > 90
			val = (val % 90) + 64
		elsif x > 97 && x < 122 && val > 122
			val = (val % 90) + 64
		elsif x > 65 && x < 122
			val = val
		else
			val = x	
		end
		new_string << val.chr
	end
	puts new_string
end



 a = caesar_cipher "hello wats up", 5
 



