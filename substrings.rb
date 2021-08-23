def substrings(str, dict) 
  # Downcasing string and having dictionary already downcased, returns case-insensitive substrings.
	str = str.downcase
	hash = Hash.new
	# For each element in the dictionary array, code block will assign that element to a key in the hash.
	# If the element is found in the user's inputted string the value will be assigned to that element and how many times it was found.
	dict.each do |word|
		hash[word] = str.scan(word).size if str.include?(word)
	end
		hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Please input the string you want to substring."

puts (substrings(gets, dictionary))