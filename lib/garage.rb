require_relative 'bike_container'
class Garage
include BikeContainer

	def accept(bike)
		bike.fix!
		store(bike)
	end

end