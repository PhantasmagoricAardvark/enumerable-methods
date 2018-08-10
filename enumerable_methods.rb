module Enumerable
	def my_each
		i = 0
		puts "length = #{self.length}"
		while i < self.length
			yield self[i]
			i += 1
		end
		self 	
	end


end	

plus_one = Proc.new { |e| puts e + 1 }

puts
[1,2,3].my_each(&plus_one)

