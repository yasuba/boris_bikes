class Van
	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def accept(bike)

	end
	
end