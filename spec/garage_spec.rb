require 'garage'

describe Garage do
		
	let(:garage) {Garage.new(:capacity => 40)}

	it 'allows setting default capacity upon initialising' do
		expect(garage.capacity).to eq(40)
	end

	it 'can fix bikes' do
		bike = double :bike
		garage.accept(bike)
		expect(bike).to receive(:fix!)
		garage.fix_bikes
	end




end