require_relative 'bikecontainer'

class Van

  def accept_from(station)
    station.release(:broken_bike)
  end

  def dock(broken_bike)

  end

end