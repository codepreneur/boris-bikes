require 'docking_station'

describe DockingStation do
	let(:station) {DockingStation.new(:capacity => 30)}


	it 'allows setting default capacity when initialising' do
		expect(station.capacity).to eq(30)
	end


end