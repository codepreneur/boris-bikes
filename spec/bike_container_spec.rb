require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:holder) {ContainerHolder.new}

	it 'has no bikes' do
		expect(holder.bikes).to be_empty
	end

	it 'can accept bike' do
		holder.accept(:bike)
		expect(holder.bikes).not_to be_empty
	end

	it 'can accept bikes' do
		holder.accept_multiple([:bike,:bike])
		expect(holder.bikes).to eq [:bike,:bike]
	end

	it 'can release bike' do
			holder.accept(:bike)
			holder.release(:bike)
			expect(holder.bikes).to be_empty
	end

	it 'can release bikes' do
		holder.accept_multiple([:bike1,:bike2,:bike3])
		holder.release_multiple([:bike2,:bike3])
		expect(holder.bikes).to eq [:bike1]
	end

	it 'knows when its full' do
		20.times {holder.accept(:bike)}
		expect(holder).to be_full
	end

	it 'knows when its not full' do
		10.times {holder.accept(:bike)}
		expect(holder).not_to be_full
	end

	it 'should not accept more bikes when its full' do
		20.times {holder.accept(:bike)}
		expect{holder.accept(:bike)}.to raise_error RuntimeError
	end

		

end