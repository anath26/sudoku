require './lib/grid.rb'

describe Grid do

	context "initialization" do
		let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
		let(:grid) {Grid.new(puzzle)}



		it 'should have 81 cells' do
			expect(grid.cells.length).to eq(81)
		end

		it 'should have an unsolved first cell' do
			expect(grid.cells.first).to eq(0)
		end

		it ' should have a solved second cell with value 1' do
			expect(grid.cells[1]).to eq(1)
		end

		it 'should organise the cells into rows' do
			expect(grid.row.length).to eq(9)
		end

		it 'should organise the cells into columns' do
			expect(grid.column.length).to eq(9)
		end
	end

	context 'grid structur' do
		let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
		let(:grid) {Grid.new(puzzle)}


		it 'should know which row a cell is in' do
			expect(grid.which_row(46)).to eq(5)
			expect(grid.which_row(15)).to eq(1)
		end

		it 'should know which column a cell is in' do
			expect(grid.which_column(46)).to eq(1)
			expect(grid.which_column(15)).to eq(6)
		end

		it 'should know which box a cell is in' do
			expect(grid.which_box(46)).to eq(3)
			expect(grid.which_box(15)).to eq(2)
		end

		it 'shoud know wich box row a box is in' do
			expect(grid.box_row_position(15)).to eq(0)
			expect(grid.box_row_position(46)).to eq(1)
			expect(grid.box_row_position(67)).to eq(2)
		end

		it 'should know wich box column a box is in' do
			expect(grid.box_column_position(15)).to eq(2)
			expect(grid.box_column_position(46)).to eq(0)
			expect(grid.box_column_position(67)).to eq(1)
		end




	end



	# context 'solving sudoku' do

	# 	it 'can solve the puzzle'do
	# 		expect


	# 	end
end


	