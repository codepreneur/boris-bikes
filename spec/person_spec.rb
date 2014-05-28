require 'person'

describe Person do
	let(:person) {Person.new}

	it 'has no bike' do
		expect(person).not_to have_bike
	end

	it 'can have bike' do
		expect(Person.new(:bike)).to have_bike
	end

	it 'can fall down' do
		bike = double :bike
		expect(bike).to receive(:break!)
		Person.new(bike).fall_down
	end

	it 'can rent a bike from a station' do
		station = double :station
		expect(station).to receive(:release)
		person.rent_bike_from station
	end

	it 'has a bike after renting one from station' do
		station = double :station, release: :bike
		person.rent_bike_from(station)
		expect(person).to have_bike
	end



end