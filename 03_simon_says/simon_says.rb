def echo word
	word
end

def shout word
	word.upcase
end

def repeat word, times = 2
  word + (" #{word}"*(times-1))
end

def start_of_word word, chrs
	word[0..chrs-1]
end

def first_word str
	str.split(' ')[0]
end

def titleize str
	words = str.split(' ')
	frs = words.shift.capitalize
	((words.map {|wrd| if /and|but|for|of|over|with|to|off|the/ !~ wrd then wrd.capitalize; else wrd end } ).unshift(frs)).join(' ')
end