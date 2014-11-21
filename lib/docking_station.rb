require_relative 'bikecontainer'

class DockingStation

  include BikeContainer

  def empty?
    @bikes.count == 0
  end


end
