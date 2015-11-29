def reverser 
	(yield.split(' ').map {|wrd| wrd.reverse}).join(' ') if block_given?
end

def adder num=1
	num + yield
end

def repeater num=1 
	num.times { yield } if block_given?
end
