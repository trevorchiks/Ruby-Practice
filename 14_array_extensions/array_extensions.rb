class Array
	def sum
		self.inject(0) {|sum, i| sum += i}
	end
	
	def square
		self.map {|i| i**2} #if self.length > 0
	end
		
	def square!
		self.map! {|i| i**2} #if self.length > 0
	end
end