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

	def full?
		bikes.count == capacity
	end

	def capacity=(value)
		@capacity = value
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

end