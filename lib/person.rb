Dir["./lib/*.rb"].each {|file| require file}

class Person

	def initialize(bike=nil)
		@bike = bike
	end

	def has_bike?
		!@bike.nil?
	end

	def fall_down
		@bike.break!
	end

	def return_to(station)
		station.accept(@bike) if has_bike?
		@bike = nil
	end

	def rent_bike_from(station, bike)
		@bike = station.release(bike) if !has_bike?
	end

end