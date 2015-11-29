class Temperature
	def initialize temp
		@temp = temp[:f] ? Hash[:f, temp[:f], :c, (temp[:f] - 32) * 5.0/9.0] : Hash[:c, temp[:c], :f, temp[:c] * 9.0/5.0 + 32]
		@celc = temp[:c]
	end
	
	def in_fahrenheit
		@temp[:f]
	end
	
	def in_celsius
		@temp[:c]
	end
	
	def self.from_celsius temp
		Temperature.new :c => temp
	end
	
	def self.from_fahrenheit temp
		Temperature.new :f => temp
	end
	
end

class Celsius < Temperature
	def initialize temp
		super :c => temp
	end
end

class Fahrenheit < Temperature
	def initialize temp
		super :f => temp
	end
end