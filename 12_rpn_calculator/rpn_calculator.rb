class RPNCalculator

	def initialize
		@values = []		
	end
	
	def push val
		@values.push val
	end
	
	def operate
		if @values.length < 2 then
			raise Exception.new "calculator is empty"
		else
			firs = @values.pop
			@values.push yield @values.pop, firs*1.0
		end
	end
	
	def plus
		self.operate &:+
	end
	
	def minus
		self.operate &:-
	end
	
	def times
		self.operate &:*
	end
	
	def divide
		self.operate &:/
	end
	
	def tokens str
		str.split(' ').map do |i| 
			if i >= "0" then 
				i.to_i
			else
				i.to_sym
			end
		end
		
	end
	
	def evaluate str
		ops = tokens str
		ops.map do |i|
			if i.class == Symbol then
				self.operate &i
			else
				self.push i
			end
		end
		self.value
	end
	
	def value
		@values[-1]
	end
end