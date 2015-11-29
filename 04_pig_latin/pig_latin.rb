def translate string
	inter = string.split(' ').map do |word|
		if word !~ /\b[aeiouAEIOU]\w*/ then
			word = word.sub(/qu|sch|\b([^\WaeiouAEIOU](qu)*)+/,"") + word[/qu|sch|\b([^\WaeiouAEIOU](qu)*)+/].downcase + "ay"
		else
			word + "ay"
		end		
	end
	inter.join(' ')
end