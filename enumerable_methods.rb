module Enumerable
	def my_each
		yield 2
	end


end	



[1,2,3].my_each {|i| puts i}