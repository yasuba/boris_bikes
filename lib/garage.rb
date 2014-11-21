require_relative 'bike_container'
class Garage
include BikeContainer

	def accept(bike)
		raise "Only broken bikes please" if bike.working?
		bike.fix!
		store(bike)
	end

end