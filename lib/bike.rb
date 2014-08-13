class Bike

	def initialize
		fix!
	end

	def working?
		@working
	end

	def break!
		@working = false
	end

	def fix!
		@working = true
	end

	def broken?
		@working == false
	end
end