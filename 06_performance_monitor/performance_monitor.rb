def measure times=1
	start = Time.now
	times.times { yield }
	(Time.now - start)/times
end