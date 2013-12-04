class Grid

	attr_accessor :cells

	def initialize puzzle
		@cells = puzzle.split("").map(&:to_i)
	end


	
end

# def fork
# table.fork =true
# end

# def piss
# 	iWantTo.piss(on_the_sheets)= true
# end
