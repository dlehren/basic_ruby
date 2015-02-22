def bubble_sort(list)
	list.length.times do
		(list.length - 1).times do |i|
			if list[i] > list[i + 1]
				sub = list[i + 1]
				list[i + 1] = list[i]
				list[i] = sub
			end
		end
	end	
	print list
end

def bubble_sort_by(array)
	swap =true
	while swap do
        swap = false
        for i in 1...array.length
            if yield(array[i], array[i-1]) < 0
                array[i], array[i-1] = array[i-1], array[i]
                swap = true
            end
        end
    end
    puts array
end



puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort_by(["loooooong", "s", "sh", "shh", "shortish"]) {|second, first|
second.length - first.length}