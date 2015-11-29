class Timer
	def seconds
		0
	end
	
	def seconds=time
		@time = time
	end
	
	def time_string
		"#{(@time/(60*60)).to_s.rjust(2, "0")}:#{((@time/60)%60).to_s.rjust(2, "0")}:#{(@time%60).to_s.rjust(2, "0")}"
	end
end