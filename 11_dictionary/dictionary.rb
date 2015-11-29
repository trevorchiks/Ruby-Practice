class Dictionary
	def initialize
		@entries = Hash[]
	end
	
	def entries
		@entries
	end
	
	def add entry
		entry.class == Hash ? (@entries.merge! entry) : @entries[entry] = nil		
	end
	
	def keywords
		@entries.keys.sort
	end
	
	def include? key
		@entries.include? key
	end
	
	def find key
		@entries.select { |k,v| k.match key }  
	end
	
	def printable
		ans = ""
		(@entries.sort.each {|k,v| ans += "[#{k}] \"#{v}\"\n"})
		ans.chomp
	end
	
end