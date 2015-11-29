class XmlDocument
	def initialize indent=false
		@indent = indent
		@lfill = 0
	end
	def render otag
		rfill = @lfill-1
		if block_given? == false then
			"<#{otag}/>"
		else
			ans = "<#{otag}>#{"\n"+"  "*(@lfill) if @indent}#{yield}#{"  "*(rfill) if @indent}</#{otag}>"
			#puts ans
			ans 
		end
	end
	
	def method_missing methId, *args, &block
		@lfill += 1
		ans = methId.id2name
		if args.length > 0 then
			(args[0]).each {|k,v| ans += ' ' + k.to_s + "='"+v.to_s + "'"} 
		end
		#puts block,
		#"<#{ans}/>"
		#@indent ? @lfill = "  " : ''
		resp = render(ans, &block)
		"#{resp}#{"\n" if @indent}"
	end
end