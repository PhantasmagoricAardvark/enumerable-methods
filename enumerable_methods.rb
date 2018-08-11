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

	def my_each_with_index
		i = 0
		while i < self.length
			yield(self[i], self.index(self[i]))
			i += 1
		end

	end

	def my_select
		i = 0
		arr = []
		while i < self.length
			if (yield self[i]) == true
				arr.push(self[i])
			end
			i += 1
		end
		p arr	
	end

	def my_all?
		i = 0
		while i < self.length
			if yield(self[i]) == false
				return p false
			end
			i += 1
		end
		p true
		
	end

	def my_any?
		i = 0
		while i < self.length
			if yield(self[i]) == true
				return p true
			end
			i += 1
		end
		return p false
	end

	def my_none?
		i = 0
		while i < self.length

			if yield(self[i]) == true
				return p false
			end
			i += 1
		end
		return p true 
	end

	def my_count?
		i = 0
		counter = 0
		if block_given?
			while i < self.length
				if yield(self[i]) == true
					counter += 1
				end

				i += 1
			end
			return p counter
		else
			return p self.length
		end
	end

	


end	

plus_one = Proc.new { |e, i| puts "e is #{e}"
puts "index is #{i}" 
puts }

evens = Proc.new { |i| i.even? }
greater_than = Proc.new { |i| i >= 1}



[0,2,-10,-3].my_count?(&greater_than)
	
	

