module Count
	def enunciate val
		bases = Hash[  0 => "zero",
					   1 => "one",
					   2 => "two",
					   3 => "three",
					   4 => "four",
					   5 => "five",
					   6 => "six",
					   7 => "seven",
					   8 => "eight",
					   9 => "nine",
					  10 => "ten",
					  11 => "eleven",
					  12 => "twelve",
					  13 => "thirteen",
					  14 => "fourteen",
					  15 => "fifteen",
					  16 => "sixteen",
					  17 => "seventeen",
					  18 => "eighteen",
					  19 => "nineteen",
					  20 => "twenty",
					  30 => "thirty",
					  40 => "forty",
					  50 => "fifty",
					  60 => "sixty",
					  70 => "seventy",
					  80 => "eighty",
					  90 => "ninety",
					 100 => "hundred",
					1000 => "thousand",
				 1000000 => "million",
			  1000000000 => "billion",
		   1000000000000 => "trillion"					  
					  ]
		
		if val <= 20
			bases[val]
		elsif val.between?(20, 99)
			"#{bases[(val/10)*10]}#{" " + bases[val%10] if val%10 > 0}"
		elsif val.between?(100, 999)
			"#{(val/100).in_words} hundred#{" " + (val%100).in_words if val%100 > 0}"
		elsif val.between?(1000, 999999)
			"#{(val/1000).in_words} thousand#{" " + (val%1000).in_words if val%1000 > 0}"
		elsif val.between?(1000000, 999999999)
			"#{(val/1000000).in_words} million#{" " + (val%1000000).in_words if val%1000000 > 0}"
		elsif val.between?(1000000000, 999999999999)
			"#{(val/1000000000).in_words} billion#{" " + (val%1000000000).in_words if val%1000000000 > 0}"
		elsif val >= 1000000000000
			"#{(val/1000000000000).in_words} trillion#{" " + (val%1000000000000).in_words if val%1000000000000 > 0}"
		end
		
		#if lead > 999
			#if lead < sqrt(next) || next is thousands
			#else lead.in_words + next.in_words
		#else lead.in_words
	end
end

class Fixnum
	include Count
	
	def in_words
		enunciate self.to_int		
	end
end

class Bignum
	include Count
	
	def in_words
		enunciate self.to_int		
	end
end