require './lib/cell.rb'

describe Cell do 
	let (:cell) {Cell.new}

	it 'should be empty by default' do
		expect(cell).to be_empty
	end
	
	# it 'should not be filled out' do
	# cell = Cell.new
	# expexct(cell).not_to be_filled_out
	# end

	it 'should be able to have a value' do
		cell.value = 5
		expect(cell.value).to eq(5)
	end

	it 'should not be empty if it has a value' do
		cell.value = 4
		expect(cell).not_to be_empty
	end

	it 'should solve itself if there is only one solution'do
		neighbours = [1,2,3,4,6,7,8,9]
		cell.solve(neighbours)
		expect(cell.value).to eq(5)
	end

	it 'should solve itself if there is more than one solution'do
		neighbours = [1,2,3,4]
		cell.solve(neighbours)
		expect(cell).to be_empty
	end

	context 'should know its possible values' do 

		it 'given all neighbours butone' do
			expect(cell).to be_empty
			neighbours = [1,2,3,4,6,7,8,9]
			expect(cell.possible_values(neighbours)).to eq([5])
		end

		it 'given all neighbours but two' do
			neighbours = [2,3,4,6,7,8,9]
			expect(cell.possible_values(neighbours)).to eq([1,5])
		end
	end


end