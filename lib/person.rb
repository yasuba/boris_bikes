class Person
	def initialize
		@bikes = []
	end

	def has_bike?
		@bikes.any?
	end

	def take(bike)
		@bikes << bike
	end

	def return_bike
		raise "I don't have a bike" if has_bike? == false
		@bikes.pop
	end

	def broken_bikes
    	@bikes.select { |bike| bike.broken? }
  	end
end