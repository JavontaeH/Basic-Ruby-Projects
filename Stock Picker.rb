def stock_picker(array)
	profit = 0
	day_bought = 0
	day_sold = 0
	

	array.each_with_index do |price, day|
		i = 0
		until i >= array.length
			if array[i] - price > profit && i > day
				profit = array[i] - price
				day_bought = day
				day_sold = i
			end
			
			i = i + 1
			
		end

	end
puts "Buy on day #{day_bought} & sell on day #{day_sold} for a profit of #{profit}."

end

stock_picker([17,3,6,9,15,8,6,1,10])