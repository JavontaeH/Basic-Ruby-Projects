def bubble_sort (arr)
	length = arr.length
	loop do
		sorted = false
		(length-1).times do |num|
			if arr[num] > arr[num + 1]
				arr[num], arr[num + 1] = arr[num + 1], arr[num]
				sorted = true
			end
		end
	break if sorted == false
	end

	puts arr
	
end

bubble_sort([4,3,78,2,0,2])

