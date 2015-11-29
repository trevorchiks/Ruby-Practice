class Friend
	def greeting name = nil
		"Hello#{', ' + name if name != nil}!"
	end
end