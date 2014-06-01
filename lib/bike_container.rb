module BikeContainer

	DEFAULT_CAPACITY = 20


	def empty?
		!@bikes.any?
	end

	def bikes
		@bikes ||= []
	end

	def accept(bike)
		raise 'cant fit more bikes' if full?
		bikes << bike
	end

	def release(bike)
		bikes.delete(bike)
	end

	def accept_multiple(bicycles)
		bikes.concat(bicycles) unless full?
	end	

	def release_multiple(bicycles)
		bikes - bicycles
	end


	def full?
		bikes.count == capacity
	end

	def capacity=(value)
		@capacity = value
	end

	def capacity 
		@capacity ||= DEFAULT_CAPACITY
	end

	def fixed_bikes
		bikes.select{|bike| !bike.broken?} 
	end

	def broken_bikes
		bikes.select{|bike| bike.broken? }.sample
	end


end