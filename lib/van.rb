require_relative 'bikecontainer'

class Van

  include BikeContainer

  def accept_from(station)
    station.release(:broken_bike)
  end

end