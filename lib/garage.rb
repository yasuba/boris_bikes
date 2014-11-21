require_relative 'bikecontainer'
class Garage
include BikeContainer

  def accept(bike)
    raise "Only broken bikes please" if bike.working?
    bike.fix!
    dock(bike)
  end

end