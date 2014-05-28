require 'bike'

describe Bike do
	let(:bike) {Bike.new}
	let(:broken_bike) do
		Bike.new.break!
	end

	it 'is not broken' do
		expect(bike).not_to be_broken
	end

	it 'can break' do
		expect(broken_bike).to be_broken
	end

	it 'can be fixed' do
		expect(broken_bike.fix!).not_to be_broken
	end


end