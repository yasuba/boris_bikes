module BikeContainer

  IS_BROKEN = -> (bike) {bike.broken?}
  BIKECONTAINER_CAPACITY = 20

  def initialize
    @bikes = []

  end

  def has_bikes?
    @bikes.any?
  end

  def dock(bike)
    raise "No more room" if full?
    @bikes << bike
  end

  def broken_bikes
    @bikes.select &IS_BROKEN
  end

  def working_bikes
    @bikes.reject &IS_BROKEN
  end

  def release_working_bikes
    raise "empty" if @bikes.count == 0
    release_working_bikes = working_bikes
  end

  def release_broken_bikes
    raise "empty" if @bikes.count == 0
    release_broken_bikes = broken_bikes
  end

  def full?
    @bikes.count == BIKECONTAINER_CAPACITY
  end

end