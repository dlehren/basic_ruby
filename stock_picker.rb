def stock_picker stock_array
	best_buy = 0
	best_sell = 0
	max_profit = 0
	
	
	stock_array.each_with_index do |buy, i| 
		stock_array[(i+1)..-1].each_with_index do |sell, j|
			if (sell - buy) > max_profit
				best_sell = j + (i + 1)
				best_buy = i
				max_profit = sell - buy
			end
			#puts "sell #{sell} day #{j} profit #{sell - buy}"
		end

		#puts "price = #{buy} day = #{i} #{max_profit}"	
	end
	puts "buy on day #{best_buy + 1} sell on #{best_sell + 1} your profit will be #{max_profit}"
		
	end

stock_picker([17,3,6,9,15,8,6,1,10])