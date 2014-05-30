require 'van'

describe Van do
	let(:van) {Van.new(:capacity => 10)}

	it 'allows setting default capacity upon initialising' do
		expect(van.capacity).to eq(10)
	end



end