class Book
	
	def title=newTit
		arr = newTit.split(' ')
		beg = arr.shift.capitalize
		@title = (arr.map { |wrd| ["a","an","and","or","if","with","to","the","of","in"].include?(wrd) ? wrd : wrd.capitalize}).unshift(beg).join(' ')
	end
	
	def title
		@title
	end
end