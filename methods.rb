module Enumerable
	def my_each 
		return self unless block_given?
		for i in self
			yield(i)
		end
	end
	def my_each_with_index
		return self unless block_given?
		for i in self
			yield(i, index(i))
		end
	end
	def my_select
		return self unless block_given?
			new_array = []
			my_each { |i| new_array << i if yield(i)}
			new_array
	end
	def my_all?
		if block_given?
			my_each {|i| return false unless yield(i)}
		else
			my_each{|i| return true if i}
		end
		true
	end
end

#[1,2,3,4].my_each{|a| puts a}
#[2,3,4,5].my_each_with_index{|a,b| print a, b }
b = ["all", "none", "a"].my_all?{|a|a.length > 3}
puts b