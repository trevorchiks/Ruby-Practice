def add a, b
 a + b
end

def subtract a, b
	a - b
end

def sum arr
	arr.inject(0) {|sum, i| i+sum}
end

def multiply *args
	args.inject(1) {|prod, i| prod*i}
end

def power a, b
	a**b
end

def factorial num, res=1
	if num <= 1	then res
	else
	factorial num-1, res*num
	end	
end


