class Cell

	attr_accessor :value

	# reader
	#def value
	#	@value
	#end
	#writer
	# def value=(value)
	# @value = value
	# end

	def empty?
		@value.nil?
	end

	def possible_values(neighbours)
		(1..9).to_a - neighbours
	end

	def solve(neighbours)
		values = possible_values(neighbours)
		if values.length == 1
			self.value = values.first
		end
	end

	def rows
		row = []
	end
end

