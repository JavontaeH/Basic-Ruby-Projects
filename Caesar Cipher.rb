def caesar_cipher(string,shift)
	ascii = string.bytes
	if shift > 0
    	shiftnums = ascii.map do |val|
			# Wrap around (A-Z || a-z) checks and equations for positive shift values
			if val.between?(65,90) && val + shift < 91
				val = val + shift
			elsif val.between?(65,90) && val + shift >= 91
				val = (((val+shift)-90)%26) + 64
			elsif val.between?(97,122) && val + shift < 123
				val = val + shift
			elsif val.between?(97,122) && val + shift >= 123
				val = (((val+shift)-122)%26) + 96
			else
				val = val
			end
		end
	else 
		shiftnums = ascii.map do |val|\
			# Wrap around (A-Z || a-z) checks and equations for negative shift values
			if val.between?(65,90) && val + shift > 64
				val = val + shift
			elsif val.between?(65,90) && val + shift <= 64
				val = ((90-(val+shift))%26)+90
			elsif val.between?(97,122) && val + shift > 96
				val = val + shift
			elsif val.between?(97,122) && val + shift <= 96
				val = ((122-(val+shift))%26)+122
			else
				val = val
			end
		end
	end
	# Iterates through shifted values, reassigns character and joins them back together.
	shiftchar = shiftnums.map { |c| c.chr }
	puts shiftchar.join()
end
		
caesar_cipher("What a string !", 5)
