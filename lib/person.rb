class Person
	def initialize
		@bikes = []
	end

	def has_bike?
		@bikes.any?
	end
end