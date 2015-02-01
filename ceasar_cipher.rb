#puts "please enter a string wand a , and a number to encode"
#string = gets.chomp
#

#puts split
def value(string)
	string.split("").each do |x|
		y = x.ord + 1 unless x == " "
		puts x unless x == " "
		puts y.chr
	end
	puts string
end
	value "helloz" 
def ceaser_ciphen(string, place)
	string = string + place
	puts string

end
