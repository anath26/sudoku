class Grid

	attr_accessor :cells

	def initialize puzzle
		@cells = puzzle.split("").map(&:to_i)
	end

	def row
		rows = []
		cells.each_slice(9) {|row| rows << row}
		rows
	end

	def column
		row.transpose
	end

	def which_row(cell_number)
		cell_number / 9
	end

	def which_column(cell_number)
		cell_number % 9
	end

	def which_box(cell_number)
		3 * (which_row(cell_number) / 3) + (which_column(cell_number) / 3)
	end

	def box_row_position(cell_number)
		  which_box(cell_number) / 3
	end

	def box_column_position(cell_number)
		which_column(cell_number) / 3
	end



	
end

# def fork
# table.fork =true
# end

# def piss
# 	iWantTo.piss(on_the_sheets)= true
# end
