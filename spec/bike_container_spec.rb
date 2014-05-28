require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:holder) {ContainerHolder.new}

	it 'has no bikes' do
		expect(holder.bikes).to be_empty
	end

	it 'should accept bikes' do
		holder.accept(:bike)
		expect(holder.bikes).not_to be_empty
	end

	it 'should release bikes' do
			holder.accept(:bike)
			holder.release(:bike)
			expect(holder.bikes).to be_empty
	end

	it 'should know when its full' do
		20.times {holder.accept(:bike)}
		expect(holder).to be_full
	end

	it 'should know when its not full' do
		10.times {holder.accept(:bike)}
		expect(holder).not_to be_full
	end

	it 'should not accept more bikes when its full' do
		20.times {holder.accept(:bike)}
		expect{holder.accept(:bike)}.to raise_error RuntimeError
	end

		

end